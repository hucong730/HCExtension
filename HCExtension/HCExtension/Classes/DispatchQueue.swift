//
//  DispatchQueue.swift
//  HCExtension
//
//  Created by 胡聪 on 2018/9/5.
//  Copyright © 2018年 胡聪. All rights reserved.
//

import Foundation

extension DispatchQueue: HCExtensionCompatible {}
extension HCExtension where Base == DispatchQueue {
    private static var _onceTracker = Set<String>()
    
    public static func once(file: String = #file, function: String = #function, line: Int = #line, closure: () -> Void) {
        let token = file + ":" + function + ":" + String(line)
        once(token: token, closure: closure)
    }
    
    private static func once(token: String, closure: () -> Void) {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }

        if _onceTracker.contains(token) {
            return
        }
        _onceTracker.insert(token)
        closure()
    }
}
