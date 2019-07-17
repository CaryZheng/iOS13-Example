//
//  AppleSigninButton.swift
//  iOS13Example
//
//  Created by CaryZheng on 2019/7/17.
//  Copyright © 2019 Cary. All rights reserved.
//

import SwiftUI
import AuthenticationServices

struct AppleSigninButton : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<AppleSigninButton>) -> ASAuthorizationAppleIDButton {
        let button = ASAuthorizationAppleIDButton()
        return button
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: UIViewRepresentableContext<AppleSigninButton>) {
    
    }
}

#if DEBUG
struct AppleSigninButton_Previews : PreviewProvider {
    static var previews: some View {
        AppleSigninButton()
    }
}
#endif
