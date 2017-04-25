//
//  AJTextField.swift
//  AJIBDesignables
//
//  Created by Arun Jangid on 25/02/16.
//  Copyright © 2016 Arun Jangid. All rights reserved.
//

import UIKit

@IBDesignable
public class AJTextField: UITextField {

    @IBInspectable var padding : CGPoint = CGPoint.zero

    
    required public override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override public func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return getBoundsPadding()
        }else{
            return super.placeholderRect(forBounds: self.bounds)
        }
    }
    
    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return bounds.insetBy(dx: padding.x, dy: padding.y)
        }else{
            return super.textRect(forBounds: self.bounds)
        }
    }
    
    override public func borderRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return getBoundsPadding()
        }else{
            return super.borderRect(forBounds: self.bounds)
        }
    }
    
    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        if padding.equalTo(CGPoint.zero) == false{
            return getBoundsPadding()
        }else{
            return super.editingRect(forBounds: self.bounds)
        }
    }
    
    override public func clearButtonRect(forBounds bounds: CGRect) -> CGRect {
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
