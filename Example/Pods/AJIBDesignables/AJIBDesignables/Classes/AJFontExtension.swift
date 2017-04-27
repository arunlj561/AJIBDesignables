//
//  AJFontExtension.swift
//  AJIBDesignables
//
//  Created by Arun Jangid on 4/27/17.
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

    

    
    static public let sharedInstance:AJFontExtension = AJFontExtension()
    
    public var normal : String?
    public var title : String?
    public var subtitle : String?
    public var descriptive : String?
    public var larger : String?
    
    
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
    
    
    func setup(_ name:String, fontSize: CGFloat) -> UIFont{
        switch name {
        case FontName.Title.rawValue:
            return AJFontExtension.title(fontSize)
        case FontName.SubTitle.rawValue:
            return AJFontExtension.subtitle(fontSize)
        case FontName.Description.rawValue:
            return AJFontExtension.description(fontSize)
        case FontName.Larger.rawValue:
            return AJFontExtension.larger(fontSize)
        case FontName.Normal.rawValue:
            return  AJFontExtension.normal(fontSize)
        default:
            return  AJFontExtension.normal(fontSize)
        }
        
    }
    
    
    
}
