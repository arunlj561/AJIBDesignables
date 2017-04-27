//
//  UILabel+Extras.swift
//  AJIBDesignables
//
//  Created by Arun Jangid on 4/25/17.
//  Copyright © 2017 Arun Jangid. All rights reserved.
//

import Foundation
import UIKit


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
        }
        set{
            
            self.font = AJFontExtension.sharedInstance.setup(newValue, fontSize: fontSize)
            
        }
    }
}
