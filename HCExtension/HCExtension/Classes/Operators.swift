//
//  Operators.swift
//  HCExtension
//
//  Created by 胡聪 on 2018/10/11.
//

import Foundation

infix operator <<<
//postfix operator ++
//prefix operator ++

infix operator ??=

public func ??=<T>(lhs: inout T?, rhs: T) {
    if lhs == nil {
        lhs = rhs
    }
}

public func <<<(lhs: inout String, rhs: [String: Any]) {
    lhs = rhs.hc.json
}

public postfix func ++(lhs: inout Int) -> Int {
    let temp = lhs
    lhs += 1
    return temp
}

public prefix func ++(rhs: inout Int) -> Int {
    rhs += 1
    return rhs
}
