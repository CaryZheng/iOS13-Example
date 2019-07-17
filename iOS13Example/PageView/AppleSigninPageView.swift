//
//  AppleSigninPageView.swift
//  iOS13Example
//
//  Created by Cary on 2019/7/17.
//  Copyright © 2019 Cary. All rights reserved.
//

import SwiftUI
import AuthenticationServices

struct AppleSigninPageView: View {
    var body: some View {
        VStack {
            AppleSigninButton()
                .frame(width: 300, height: 50, alignment: .center)
                .tapAction(handleLogInWithAppleIDButtonPress)
        }.navigationBarTitle(String(describing: type(of: self)))
    }
}

extension AppleSigninPageView {
    private func handleLogInWithAppleIDButtonPress() {
        print("handleLogInWithAppleIDButtonPress")
        
        let provider = ASAuthorizationAppleIDProvider()
        let request = provider.createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let controller = MyAuthorizationController(authorizationRequests: [request])
        controller.performRequests()
    }
}

class MyAuthorizationController: ASAuthorizationController {
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        print("authorizationController 1")
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print("authorizationController 2")
    }
}

#if DEBUG
struct AppleSigninPageView_Previews : PreviewProvider {
    static var previews: some View {
        AppleSigninPageView()
    }
}
#endif
