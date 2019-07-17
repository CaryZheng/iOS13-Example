//
//  ZListRowView.swift
//  iOS13Example
//
//  Created by Cary on 2019/7/17.
//  Copyright © 2019 Cary. All rights reserved.
//

import SwiftUI

struct ZListRowView : View {
    private let title: String
    private let subTitle: String?
    
    init(title: String, subTitle: String?) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.system(size: 20))
                .bold()
            if nil != subTitle {
                Text(subTitle!)
                    .font(.system(size: 14))
                    .opacity(0.5)
            }
        }
    }
}

#if DEBUG
struct ZListRowView_Previews : PreviewProvider {
    static var previews: some View {
        ZListRowView(title: "测试title", subTitle: "测试subTitle")
    }
}
#endif
