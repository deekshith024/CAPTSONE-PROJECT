//
//  DishLandscapeCollectionViewCell.swift
//  PlateParty
//
//  Created by Deekshith on 2023-04-15.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)
    
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var TitleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
   
    
    func setup (dish: Dish) {
        dishImageView.image = dish.image
        TitleLbl.text = dish.name
        descriptionLbl.text = dish.descprition
        caloriesLbl.text =  dish.formattedCalories
    }
}
