//
//  Configs.swift
//  SwiftMVVMTemplate
//
//  Created by m2 on 1/14/21.
//

import UIKit

// All keys are demonstrative and used for the test.
enum Keys {
    case github, mixpanel, adMob
    
    var apiKey: String {
        switch self {
        default: return ""
        }
    }
    
    var appId: String {
        switch self {
        default: return ""
        }
    }
}

struct Configs {
    
    static let bundleIdentifier = "org.m294"
    
    struct App {
        static let bundleIdentifier = ""
    }
    
    struct BaseDimensions {
        static let inset: CGFloat = 8
        static let tabBarHeight: CGFloat = 58
        static let toolBarHeight: CGFloat = 66
        static let navBarWithStatusBarHeight: CGFloat = 64
        static let cornerRadius: CGFloat = 5
        static let borderWidth: CGFloat = 1
        static let buttonHeight: CGFloat = 40
        static let textFieldHeight: CGFloat = 40
        static let tableRowHeight: CGFloat = 36
        static let segmentedControlHeight: CGFloat = 40
    }
    
    struct Path {
        static let Documents = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        static let Tmp = NSTemporaryDirectory()
    }
    
    struct UserDefaultsKeys {
        
    }
    
    struct Network {
        
    }
}
