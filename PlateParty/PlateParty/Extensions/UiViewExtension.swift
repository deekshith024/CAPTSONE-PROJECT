//
//  UiViewExtension.swift
//  PlateParty
//
//  Created by Karthik Reddy Rondla on 2023-04-08.
//

import UIKit

extension UIView {
    @IBInspectable  var cornerRadius: CGFloat {
        get {return self.cornerRadius }
            set {
                self.layer.cornerRadius = newValue
            }
    }
}
