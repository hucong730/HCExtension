//
//  UIColor.swift
//  HCExtension
//
//  Created by 胡聪 on 2018/10/10.
//

#if os(iOS) || os(tvOS)
import UIKit


//MARK: - init
extension UIColor {
    
    /// 输入十六进制颜色值，获取UIColor对象
    ///
    /// - Parameter hex: 十六进制颜色值，比如0xAAAAAA
    public convenience init(hex: Int64) {
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0
        
        if (hex & 0xFF000000) > 0 { //如果带alpha值
            r = CGFloat((hex & 0xFF000000) >> 24) / 255.0
            g = CGFloat((hex & 0xFF0000) >> 16) / 255.0
            b = CGFloat((hex & 0xFF00) >> 8) / 255.0
            a = CGFloat(hex & 0xFF) / 255.0
        } else {
            r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
            g = CGFloat((hex & 0xFF00) >> 8) / 255.0
            b = CGFloat(hex & 0xFF) / 255.0
        }
        self.init(red: r, green: g, blue: b, alpha: a)
    }
    
    
    /// 十六进制的字符串，生成UIColor对象
    ///
    /// - Parameter hex: 十六进制字符串，比如#ff0000
    public convenience init(hex: String) {
        if !(hex.count == 7 || hex.count == 9)  {
            fatalError("输入正确的颜色值，例如#FF0000或#FF000000")
        }
        let hexValue = String(hex[1..<hex.count])
        var r: CUnsignedLongLong = 0
        var g: CUnsignedLongLong = 0
        var b: CUnsignedLongLong = 0
        var a: CUnsignedLongLong = 255
        
        Scanner(string: String(hexValue[0..<2])).scanHexInt64(&r)
        Scanner(string: String(hexValue[2..<4])).scanHexInt64(&g)
        Scanner(string: String(hexValue[4..<6])).scanHexInt64(&b)
        if hexValue.count == 8 {
            Scanner(string: String(hexValue[6..<8])).scanHexInt64(&a)
        }

        self.init(red: Int(r), green: Int(g), blue: Int(b), alpha: Int(a))
    }
    
    /// 用RGBA初始化颜色
    /// - Parameters:
    ///   - red: 红色0-255
    ///   - green: 绿色0-255
    ///   - blue: 蓝色0-255
    ///   - alpha: 透明度0-255
    public convenience init(red: Int, green: Int, blue: Int, alpha: Int = 255) {
        let r: CGFloat = CGFloat(red) / 255.0
        let g: CGFloat = CGFloat(green) / 255.0
        let b: CGFloat = CGFloat(blue) / 255.0
        let a: CGFloat = CGFloat(alpha) / 255.0
        self.init(red: r, green: g, blue: b, alpha: a)
    }
}

extension UIColor: HCExtensionCompatible {}
extension HCExtension where Base: UIColor {
    
    /// 判断一个颜色是否是浅色
    public var isLight: Bool {
        guard let components = base.cgColor.components else { return false }
        let r = components[0]
        let g = components[1]
        let b = components[2]

        let y = 0.299 * r + 0.587 * g + 0.114 * b
        return y > 0.75
    }
    
}

#endif
