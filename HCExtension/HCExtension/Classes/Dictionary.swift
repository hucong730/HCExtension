//
//  Dictionary.swift
//  HCExtension
//
//  Created by 胡聪 on 2018/10/11.
//

import Foundation

extension Dictionary {
    /// 将右边的字典并入左边的字典中
    ///
    /// - Parameters:
    ///   - lhs: 左边是可变字典
    ///   - rhs: 右边需要并入的字典
    public static func +=(lhs: inout [String: Any], rhs: [String: Any]) {
        for (key, value) in rhs {
            lhs[key] = value
        }
    }
}

extension Dictionary: HCExtensionCompatible {}
extension HCExtension where Base == [String: Any] {
    
    /// 获取字典转成url后的查询字符串
    public var urlQueryString: String {
        if !JSONSerialization.isValidJSONObject(base) {
            return ""
        }
        
        return base.map { "\($0)=\($1)"}.joined(separator: "&")
    }
    
    /// 获取字典的json字符串
    public var json: String {
        if !JSONSerialization.isValidJSONObject(self) {
            return ""
        }
        let data = try! JSONSerialization.data(withJSONObject: self, options: [])
        let json = String(data: data, encoding: String.Encoding.utf8)
        return json ?? ""
    }
}
