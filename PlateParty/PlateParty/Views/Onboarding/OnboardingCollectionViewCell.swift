//
//  OnboardingCollectionViewCell.swift
//  PlateParty
//
//  Created by Karthik Reddy Rondla on 2023-04-12.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
 
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    
    
    
    func setup(_ slide: OnBoardingSlide) {
        
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
    
    
}
