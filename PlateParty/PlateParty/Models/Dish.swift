//
//  Dish.swift
//  PlateParty
//
//  Created by Deekshith on 2023-04-14.
//

import Foundation
import UIKit


struct Dish {
    let id: String?
    let name: String?
    let descprition: String?
    let image: UIImage?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
    
}
