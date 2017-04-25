//
//  AJTextField.swift
//  IBInspectable
//
//  Created by Arun Jangid on 25/02/16.
//  Copyright © 2016 Arun Jangid. All rights reserved.
//

import UIKit

@IBDesignable
class AJTextField: UITextField {

    @IBInspectable var padding : CGPoint = CGPoint.zero

    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return getBoundsPadding()
        }else{
            return super.placeholderRect(forBounds: self.bounds)
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return bounds.insetBy(dx: padding.x, dy: padding.y)
        }else{
            return super.textRect(forBounds: self.bounds)
        }
    }
    
    override func borderRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return getBoundsPadding()
        }else{
            return super.borderRect(forBounds: self.bounds)
        }
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return getBoundsPadding()
        }else{
            return super.editingRect(forBounds: self.bounds)
        }
    }
    
    override func clearButtonRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return getBoundsPadding()
        }else{
            return super.clearButtonRect(forBounds: self.bounds)
        }
    }
    
    func  getBoundsPadding() -> CGRect{
       return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(0, padding.x, 0, padding.y))
    }
    
    
}
