//
//  DishPortraitCollectionViewCell.swift
//  PlateParty
//
//  Created by Deekshith on 2023-04-14.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = "DishPortraitCollectionViewCell"
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    
    func setup(dish: Dish) {
        titleLbl.text = dish.name
        dishImageView.image = dish.image
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.descprition
        
    }
}
