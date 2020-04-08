//
//  String.swift
//  HCExtension
//
//  Created by 胡聪 on 2018/10/11.
//

import Foundation


//MARK: - subscript
extension String {
    /// 用过索引set/get字符
    subscript(_ i: Int) -> Character {
        set {
            self[i..<i + 1] = Substring(String(newValue))
        }
        get {
            self[i..<i + 1].first!
        }
    }
    
    /// 通过Range来set/get子串
    subscript<R>(_ r: R) -> Substring where R: RangeExpression, R.Bound == Int {
        set {
            self.replaceSubrange(Range<Index>(NSRange(r), in: self)!,
                                 with: String(newValue))
        }
        get {
            self[Range<Index>(NSRange(r), in: self)!]
        }
    }
}

//MARK: - hc extension
extension String: HCExtensionCompatible {}
extension HCExtension where Base == String {
    
    /// 字符串获取url
    public var url: URL? {
        URL(string: base)
    }
    
    /// 获取字符串的长度
    public var length: Int {
        base.utf16.count
    }
}
