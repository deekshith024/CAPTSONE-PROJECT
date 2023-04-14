//
//  HomeViewController.swift
//  PlateParty
//
//  Created by Karthik Reddy Rondla on 2023-04-13.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "South Indian", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "Spicey", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "North Indian", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "Mumbai", image: UIImage(named: "slide1.png")!),
        .init(id: "id1", name: "Hyderabadi", image: UIImage(named: "slide1.png")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        title = "PlateParty"
        
    registerCells()
        
    }
    
    //as collection view cell is out of collection we need to register it
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil),  forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
    
    
}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}
