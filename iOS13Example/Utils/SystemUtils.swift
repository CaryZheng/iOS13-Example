//
//  SystemUtils.swift
//  iOS13Example
//
//  Created by CaryZheng on 2019/7/17.
//  Copyright © 2019 Cary. All rights reserved.
//

import Foundation
import UIKit

class SystemUtils {
    
    static func isDarkMode() -> Bool {
        if UITraitCollection.current.userInterfaceStyle == .dark {
            return true
        }
        
        return false
    }
}
