//
//  UIView+Extension.swift
//  Yummie
//
//  Created by Yusuf Pektaş on 5.04.2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
