//
//  UIImage.swift
//  HCExtension
//
//  Created by 胡聪 on 2020/4/7.
//

#if os(iOS) || os(tvOS)

import UIKit


extension UIImage: HCExtensionCompatible {}
extension HCExtension where Base: UIImage {
    
    
    /// 判断图片是否是浅色
    /// - Parameters:
    ///   - size: 只判断图片某个区域
    ///   - closure: 回调
    public func isLight(_ size: CGSize? = nil, closure: @escaping (Bool) -> Void) {
        
        DispatchQueue.global().async {
            let thumbSize = size ?? self.base.size
            let colorSpace = CGColorSpaceCreateDeviceRGB()
            let context = CGContext(data: nil,
                                    width: Int(thumbSize.width),
                                    height: Int(thumbSize.height),
                                    bitsPerComponent: 8,
                                    bytesPerRow: Int(thumbSize.width * 4),
                                    space: colorSpace,
                                    bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)
            
            context?.draw(self.base.cgImage!, in: CGRect(x: 0, y: 0, width: thumbSize.width, height: thumbSize.height))
            
            //取每个点的像素值
            let bitData = context?.data
            let data = unsafeBitCast(bitData, to:UnsafePointer<CUnsignedChar>.self)
            
            //超过一半的像素是浅色，则判定图片为浅色
            let passCount = Int(thumbSize.width * thumbSize.height * 0.5)
            var count = 0
            for x in 0..<Int(thumbSize.width) {
                for y in 0..<Int(thumbSize.height) {
                    let offSet = (y * Int(thumbSize.width) + x) * 4
                    let r = CGFloat((data + offSet).pointee)
                    let g = CGFloat((data + offSet + 1).pointee)
                    let b = CGFloat((data + offSet + 2).pointee)
                    let res = (r * 0.299 + g * 0.578 + b * 0.114) / 255 > 0.75
                    if res {
                        count += 1
                    }
                    if count >= passCount {
                        break
                    }
                }
            }
            
            DispatchQueue.main.async {
                closure(count >= passCount)
            }
        }
    }
    
    /// 裁剪图片
    /// - Parameter inRect: 范围
    /// - Returns: 裁剪后的图片
    public func image(cliped inRect: CGRect) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(base.size, false, base.scale)
        UIBezierPath(rect: inRect).addClip()
        base.draw(in: inRect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    
    
    /// 给图片切圆角
    /// - Parameter withRadius: 圆角大小
    /// - Returns: 被切之后的图片
    public func image(corner withRadius: CGFloat) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(base.size, false, base.scale)
        let rect = CGRect(origin: .zero, size: base.size)
        UIBezierPath(roundedRect: rect, cornerRadius: withRadius).addClip()
        base.draw(in: rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

#endif
