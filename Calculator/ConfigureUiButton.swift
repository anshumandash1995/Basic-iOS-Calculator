//
//  ConfigureUiButton.swift
//  Calculator
//
//  Created by Anshuman Dash on 6/29/18.
//  Copyright © 2018 Anshuman Dash All rights reserved.
//

import UIKit

@IBDesignable
class ConfigureUiButton: UIButton {
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override func draw(_ rect: CGRect) {
        layoutIfNeeded()
        layer.cornerRadius = frame.size.height/2
        layoutIfNeeded()
    }
}
