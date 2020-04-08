//
//  UIView.swift
//  HCExtension
//
//  Created by 胡聪 on 2020/4/7.
//
#if os(iOS) || os(tvOS)

import UIKit


extension UIView: HCExtensionCompatible {}
extension HCExtension where Base: UIView {
    
    /// 给UIView添加圆角，4个角可以单独设置
    ///
    /// - Parameters:
    ///   - corner: 圆角位置
    ///   - radius: 圆角大小
    public func addRect(corner: UIRectCorner, with radius: CGFloat) {
        base.superview?.layoutIfNeeded()
        let maskPath = UIBezierPath(roundedRect: base.bounds, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = base.bounds
        maskLayer.path = maskPath.cgPath
        base.layer.mask = maskLayer
    }
    
    /// 获取UIView的屏幕快照UIImage
    public var snapshotImage: UIImage? {
        UIGraphicsBeginImageContextWithOptions(base.bounds.size, true, UIScreen.main.scale)
        base.drawHierarchy(in: base.bounds, afterScreenUpdates: false)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
}

#endif
