//
//  UIDevice.swift
//  HCExtension
//
//  Created by 胡聪 on 2020/4/8.
//  Copyright © 2020 胡聪. All rights reserved.
//
#if os(iOS) || os(tvOS)

import UIKit
import AdSupport

extension UIDevice: HCExtensionCompatible {}
extension HCExtension where Base: UIDevice {
    
    public var idfa: String {
        ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }
    
    public var isIPhoneX: Bool {
        if Base.current.userInterfaceIdiom == .pad {
            return false
        }
        
        let size = UIScreen.main.bounds.size
        let notchValue: Int = Int(size.width / size.height * 100)
        
        if 216 == notchValue || 46 == notchValue {
            return true
        }
        return false
    }
    
    public var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {
                return identifier
            }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        return deviceModelNameDict?[identifier] ?? "unknow"
    }
    
}


#endif
