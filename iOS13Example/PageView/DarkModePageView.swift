//
//  DarkModePageView.swift
//  iOS13Example
//
//  Created by CaryZheng on 2019/7/17.
//  Copyright © 2019 Cary. All rights reserved.
//

import SwiftUI

struct DarkModePageView : View {
    
    var myBackgroundColor: UIColor {
        get {
            if SystemUtils.isDarkMode() {
                return UIColor.red
            }
            
            return UIColor.blue
        }
    }
    
    var body: some View {        
        VStack {
            Text("DarkModePageView")
                .background(Color(uiColor: myBackgroundColor))
        }
        .navigationBarTitle(String(describing: type(of: self)))
    }
}

#if DEBUG
struct DarkModePageView_Previews : PreviewProvider {
    static var previews: some View {
        DarkModePageView()
    }
}
#endif
