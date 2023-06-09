//
//  HomeViewController.swift
//  PlateParty
//
//  Created by Karthik Reddy Rondla on 2023-04-13.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    
    @IBOutlet weak var specialsCollectionView: UICollectionView!
    
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "South Indian", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "Spicey", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "North Indian", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "Mumbai", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "Hyderabadi", image: UIImage(named: "slide1.png")!)]
    
    
    var populars: [Dish] = [
        .init(id: "id1", name: "South Indian", descprition: "This is South Indian Dish", image: UIImage(named: "slide1.png")!, calories: 370),
        .init(id: "id1", name: "Spicey", descprition: "This is South Indian Dish", image: UIImage(named: "slide1.png")!, calories: 560),
        .init(id: "id1", name: "North Indian", descprition: "This is South Indian Dish", image: UIImage(named: "slide1.png")!, calories: 680),
       ]
    
    
    var specials: [Dish] = [
        .init(id: "id1", name: "Biryani", descprition: "This is my Favourite", image: UIImage(named: "slide1.png")!, calories: 630),
        .init(id: "id1", name: "Butter Nan",descprition: "I love it!", image: UIImage(named: "slide1.png")!, calories: 440),
        .init(id: "id1", name: "Haleem", descprition: "Ramjan special", image: UIImage(named: "slide1.png")!, calories: 800),
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        title = "PlateParty"
        specialsCollectionView.dataSource = self
        specialsCollectionView.delegate = self
    registerCells()
        
    }
    
    //as collection view cell is out of collection we need to register it
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil),  forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
       
        
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil),  forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        specialsCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil),  forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
        
    }
}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case  categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case specialsCollectionView:
            return specials.count
        default: return 0
        }
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case  categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            
            cell.setup(category: categories[indexPath.row])
            return cell
            
        case popularCollectionView:
            
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            
            cell.setup(dish: populars[indexPath.row])
            return cell
            
        case specialsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            
            cell.setup(dish: specials[indexPath.row])
            return cell
        default: return UICollectionViewCell()
            
            
        }
   
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            
        }
        else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
}
