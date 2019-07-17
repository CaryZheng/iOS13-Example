//
//  ContentView.swift
//  iOS13Example
//
//  Created by Cary on 2019/7/17.
//  Copyright © 2019 Cary. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AppleSigninPageView()) {
                    ZListRowView(title: "Apple Signin", subTitle: "用于展示Apple登录功能")
                }
                NavigationLink(destination: DarkModePageView()) {
                    ZListRowView(title: "Dark Mode", subTitle: "暗黑模式")
                }
            }.navigationBarTitle(Text("Example"), displayMode: .inline)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
