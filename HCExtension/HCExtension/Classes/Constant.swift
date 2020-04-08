//
//  Constant.swift
//  HCExtension
//
//  Created by 胡聪 on 2020/4/8.
//  Copyright © 2020 胡聪. All rights reserved.
//

import Foundation


internal let deviceModelNameList = """

{
"iPhone3,1": "iPhone 4",
"iPhone3,2": "iPhone 4",
"iPhone3,3": "iPhone 4",

"iPhone4,1": "iPhone 4s",

"iPhone5,1": "iPhone 5",
"iPhone5,2": "iPhone 5",
"iPhone5,3": "iPhone 5c",
"iPhone5,4": "iPhone 5c",

"iPhone6,1": "iPhone 5s",
"iPhone6,2": "iPhone 5s",

"iPhone7,2": "iPhone 6",
"iPhone7,1": "iPhone 6 Plus",

"iPhone8,1": "iPhone 6s",
"iPhone8,2": "iPhone 6s Plus",

"iPhone9,1": "iPhone 7",
"iPhone9,3": "iPhone 7",
"iPhone9,2": "iPhone 7 Plus",
"iPhone9,4": "iPhone 7 Plus",
"iPhone8,4": "iPhone SE",

"iPhone10,1": "iPhone 8",
"iPhone10,4": "iPhone 8",
"iPhone10,2": "iPhone 8 Plus",
"iPhone10,5": "iPhone 8 Plus",
"iPhone10,3": "iPhone X",
"iPhone10,6": "iPhone X",

"iPhone11,2": "iPhone XS",
"iPhone11,4": "iPhone XS Max",
"iPhone11,6": "iPhone XS Max",
"iPhone11,8": "iPhone XR",

"iPhone12,1": "iPhone 11",
"iPhone12,3": "iPhone 11 Pro",
"iPhone12,5": "iPhone 11 Pro Max",


"iPad2,1": "iPad 2",
"iPad2,2": "iPad 2",
"iPad2,3": "iPad 2",
"iPad2,4": "iPad 2",

"iPad3,1": "iPad 3",
"iPad3,2": "iPad 3",
"iPad3,3": "iPad 3",

"iPad3,4": "iPad 4",
"iPad3,5": "iPad 4",
"iPad3,6": "iPad 4",
"iPad4,1": "iPad Air",
"iPad4,2": "iPad Air",
"iPad4,3": "iPad Air",

"iPad5,3": "iPad Air 2",
"iPad5,4": "iPad Air 2",

"iPad6,11": "iPad 5",
"iPad6,12": "iPad 5",

"iPad2,5": "iPad Mini",
"iPad2,6": "iPad Mini",
"iPad2,7": "iPad Mini",

"iPad4,4": "iPad Mini 2",
"iPad4,5": "iPad Mini 2",
"iPad4,6": "iPad Mini 2",

"iPad4,7": "iPad Mini 3",
"iPad4,8": "iPad Mini 3",
"iPad4,9": "iPad Mini 3",

"iPad5,1": "iPad Mini 4",
"iPad5,2": "iPad Mini 4",

"iPad6,3": "iPad Pro 9.7 Inch",
"iPad6,4": "iPad Pro 9.7 Inch",
"iPad6,7": "iPad Pro 12.9 Inch",
"iPad6,8": "iPad Pro 12.9 Inch",

"iPad7,1": "iPad Pro 12.9 Inch 2. Generation",
"iPad7,2": "iPad Pro 12.9 Inch 2. Generation",
"iPad7,3": "iPad Pro 10.5 Inch",
"iPad7,4": "iPad Pro 10.5 Inch",

"iPad8,1": "iPad Pro 11 Inch",
"iPad8,2": "iPad Pro 11 Inch",
"iPad8,3": "iPad Pro 11 Inch",
"iPad8,4": "iPad Pro 11 Inch",
"iPad8,5": "iPad Pro 12.9 Inch",
"iPad8,6": "iPad Pro 12.9 Inch",
"iPad8,7": "iPad Pro 12.9 Inch",
"iPad8,8": "iPad Pro 12.9 Inch",

"iPad11,1": "iPad Mini 5",
"iPad11,2": "iPad Mini 5",
"iPad11,3": "iPad Air 3",
"iPad11,4": "iPad Air 3"
}

"""

internal let deviceModelNameDict = try? JSONSerialization.jsonObject(with: deviceModelNameList.data(using: .utf8)!, options: []) as? [String: String]
