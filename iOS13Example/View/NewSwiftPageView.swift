//
//  NewSwiftPageView.swift
//  iOS13Example
//
//  Created by Cary on 2019/7/23.
//  Copyright © 2019 Cary. All rights reserved.
//

import SwiftUI

struct Rectangle {
    var width = 0.0
    var height = 0.0
    
//    var area: Double {
//        return width * height
//    }
    
    // 单表达式函数的隐式返回（Swift 5.1新特性）
    var area: Double { width * height }
}

struct Dog {
    var age = 0
    var name = "Dog name"
}

let dog1 = Dog()
let dog2 = Dog(age: 9, name: "Dog2")
let dog3 = Dog(age: 10)
let dog4 = Dog(name: "Dog4")    // 根据默认值合成结构体初始化方法（Swift 5.1新特性）


let num = 20
let formatString = NSLocalizedString("We have \(num) pear", comment: "Number of pear")

// 属性包装类型
@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T

    init(_ key : String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
        UserDefaults.standard.register(defaults: [key: defaultValue])
    }

    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }

        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

struct Test {
    @UserDefault("USER_TOUCH_ID", defaultValue: false)
    static var userTouchID: Bool
}

struct NewSwiftPageView: View {
    var body: some View {
        VStack {
            Text(formatString)
            
            if Test.userTouchID {
                Text("userTouchID = true")
            } else {
                Text("userTouchID = false")
            }
        }
    }
}

#if DEBUG
struct NewSwiftPageView_Previews: PreviewProvider {
    static var previews: some View {
        NewSwiftPageView()
    }
}
#endif
