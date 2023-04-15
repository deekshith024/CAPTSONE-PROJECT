//
//  DishDetailViewController.swift
//  PlateParty
//
//  Created by Deekshith on 2023-04-15.
//

import UIKit

class DishDetailViewController: UIViewController {

   
  
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        populateView()
    }
    
    private func populateView() {
        dishImageView.image =  dish.image
        titleLbl.text = dish.name
        descriptionLbl.text = dish.descprition
        caloriesLbl.text = dish.formattedCalories
        
    }
    
    
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
    }
    
    
}
