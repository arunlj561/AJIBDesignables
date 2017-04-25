//
//  UILabel+Extras.swift
//  IBInspectable
//
//  Created by Arun Jangid on 4/25/17.
//  Copyright © 2017 Arun Jangid. All rights reserved.
//

import Foundation
import UIKit

enum FontName :String {
    case Normal = "normal"
    case Title = "title"
    case SubTitle = "subtitle"
    case Description = "descriptive"
    case Larger = "larger"
    case Default = "default"
}

public class AJFontExtension:NSObject{
    static let sharedInstance:AJFontExtension = AJFontExtension()
    
    var normal : String?
    var title : String?
    var subtitle : String?
    var descriptive : String?
    var larger : String?
    
    
    static func normal(_ size: CGFloat) -> UIFont {
        
        guard sharedInstance.normal != nil else {
            return UIFont.systemFont(ofSize: size)
        }
        return UIFont(name: sharedInstance.normal!, size: size)!
    }
    
    static func title(_ size: CGFloat) -> UIFont {
        return UIFont(name: sharedInstance.title!, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func subtitle(_ size: CGFloat) -> UIFont {
        return UIFont(name: sharedInstance.subtitle!, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func description(_ size: CGFloat) -> UIFont {
        return UIFont(name: sharedInstance.descriptive!, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func larger(_ size: CGFloat) -> UIFont {
        return UIFont(name: sharedInstance.larger!, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
}

@IBDesignable extension UILabel {
    
    @IBInspectable var fontSize: CGFloat {
        get {
            return self.font.pointSize
        }
        set{
            
        }
        
    }
    @IBInspectable var fontName: String{
        get {
            return "normal"
            //            print("Fontname get: \(self.fontName)")
            //            return self.fontName
        }
        set{
            print("Fontname set: \(self.fontName)")
            print(newValue)
            self.setup(newValue)
            
        }
    }
    
    func setup(_ name:String){
        
        switch name {
        case FontName.Title.rawValue:
            self.font = AJFontExtension.title(fontSize)
            break
        case FontName.SubTitle.rawValue:
            self.font = AJFontExtension.subtitle(fontSize)
            break
        case FontName.Description.rawValue:
            self.font = AJFontExtension.description(fontSize)
            break
        case FontName.Larger.rawValue:
            self.font = AJFontExtension.larger(fontSize)
            break
        case FontName.Normal.rawValue:
            self.font = AJFontExtension.normal(fontSize)
            break
        default:
            self.font = AJFontExtension.normal(fontSize)
            break
        }
        
    }
    
}
