//
//  Extensions.swift
//  04 - Piano
//
//  Created by Eduardo Carrillo on 3/21/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton{
    
    @IBInspectable var borderWidth: CGFloat{
        set{
            layer.borderWidth = newValue
        }
        get{
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadious: CGFloat{
        set{
            layer.cornerRadius = newValue
        }
        get{
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set{
            guard let uiColor = newValue else {return}
            layer.borderColor = uiColor.cgColor
        }
        get{
            guard let color = layer.borderColor else{return nil}
            return UIColor(cgColor: color)
        }
    }
    
}
