//
//  CategoryCollectionViewCell.swift
//  PlateParty
//
//  Created by Karthik Reddy Rondla on 2023-04-13.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    
    func setup(category: DishCategory) {
        categoryTitleLbl.text = category.name
        categoryImageView.image = category.image
        
        
    }
}
