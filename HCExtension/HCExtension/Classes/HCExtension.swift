//
//  HCExtension.swift
//  HCExtension
//
//  Created by 胡聪 on 2020/4/7.
//

import Foundation

public struct HCExtension<Base> {
    public let base: Base

    public init(_ base: Base) {
        self.base = base
    }
}

public protocol HCExtensionCompatible {
    
    associatedtype HCExtensionBase
    
    typealias HCExtensionType = HCExtensionBase

    static var hc: HCExtension<HCExtensionBase>.Type { get }

    var hc: HCExtension<HCExtensionBase> { get }
}

extension HCExtensionCompatible {
    public static var hc: HCExtension<Self>.Type {
        HCExtension<Self>.self
    }

    public var hc: HCExtension<Self> {
        HCExtension(self)
    }
}

//extension NSObject: HCExtensionCompatible {}
