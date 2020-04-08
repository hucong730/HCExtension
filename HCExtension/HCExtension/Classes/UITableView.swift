//
//  UITableView.swift
//  HCExtension
//
//  Created by 胡聪 on 2020/4/8.
//  Copyright © 2020 胡聪. All rights reserved.
//
#if os(iOS) || os(tvOS)

import UIKit

extension HCExtension where Base: UITableView {
    
    /// 用类名注册cell
    /// - Parameter withClass: cell的类名
    public func register(cell withClass: UITableViewCell.Type) {
        base.register(withClass, forCellReuseIdentifier: withClass.hc.defaultIdentifier)
    }
    
    /// 用nib的名称注册cell
    /// - Parameter withName: nib的名称
    public func register(nib withName: String) {
        base.register(UINib(nibName: withName, bundle: nil), forCellReuseIdentifier: withName)
    }
}

extension HCExtension where Base: UITableViewCell {
    
    /// cell默认的重用标识是它的类名
    public static var defaultIdentifier: String {
        String(NSStringFromClass(Base.self).split(separator: ".").last ?? "cell")
    }
    
    /// 获取cell的tableView
    public var tableView: UITableView {
        var view = base.superview
        while !(view is UITableView) {
            view = view?.superview
        }
        return view as! UITableView
    }
}

#endif
