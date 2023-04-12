//
//  OnboardingViewController.swift
//  PlateParty
//
//  Created by Deekshith on 2023-04-08.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnBoardingSlide] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        slides = [
            OnBoardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world", image: UIImage(named: "slide1.png")!),
            OnBoardingSlide(title: "World Class Chefs", description: "Our dishes are prepared by only the best", image: UIImage(named: "slide2.png")!),
            OnBoardingSlide(title: "Instant Delivery", description: "Your orders will be delivered instantly", image: UIImage(named: "slide3.png")!)
         ]
        
    }
  
    
    
    
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
    }
    

}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setup(slides[indexPath.row])
        return cell
    }
    
}
