//
//  UIViewController+Extension.swift
//  PlateParty
//
//  Created by Deekshith on 2023-04-15.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
      return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
          
    }
    
}
