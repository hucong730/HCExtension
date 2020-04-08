//
//  UIApplication.swift
//  HCExtension
//
//  Created by 胡聪 on 2020/4/8.
//  Copyright © 2020 胡聪. All rights reserved.
//
#if os(iOS) || os(tvOS)

import UIKit

extension UIApplication: HCExtensionCompatible {}
extension HCExtension where Base: UIApplication {
    
    public var idfa: String {
        UIDevice.current.hc.idfa
    }
    
    public var uuid: String {
        UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
    
    public var version: String {
        let infoDictionary = Bundle.main.infoDictionary
        return infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
    }
    
    public var buildVersion: String {
        let infoDictionary = Bundle.main.infoDictionary
        return infoDictionary?["CFBundleVersion"] as? String ?? "1"
    }
    
    public var bundleId: String {
        Bundle.main.bundleIdentifier ?? ""
    }
    
    public var name: String {
        let infoDictionary = Bundle.main.infoDictionary
        return infoDictionary?["CFBundleName"] as? String ?? "AppName"
    }
}


#endif
