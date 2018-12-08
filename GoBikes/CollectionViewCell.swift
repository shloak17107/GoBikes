//
//  CollectionViewCell.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 12/3/18.
//  Copyright © 2018 GoBikes. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bikeName: UILabel!
    @IBOutlet weak var bikeImage: UIImageView!
    @IBOutlet weak var bikeRating: UILabel!
    @IBOutlet weak var weekdayPrice: UILabel!
    @IBOutlet weak var weekendPrice: UILabel!
    @IBOutlet weak var cartUnselected: UIView!
    @IBOutlet weak var cart: UIButton!
    @IBOutlet weak var cartSelected: UIView!
    @IBOutlet weak var increaseQuantity: UIButton!
    @IBOutlet weak var quantity: UILabel!
    @IBOutlet weak var decreaseQuantity: UIButton!
    @IBOutlet weak var mileage: UILabel!
    @IBOutlet weak var getDirections: UIButton!
    
    @IBAction func getDirectionsTapped(_ sender: Any) {
        guard let url = URL(string: "https://www.google.com/maps/dir/?api=1&destination=Govind+Puri+Metro+Station&destination_place_id=ChIJuxk8hOfjDDkRiGBZc3RZvdA&travelmode=driving") else {
            return //be safe
        }
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    
    @IBAction func cartTapped(cart: UIButton){
        cartUnselected.isHidden = true
        cartSelected.isHidden = false
        quantity.text = "\(1)"
    }
    
    @IBAction func increaseTapped(increase: UIButton){
        if let str: String = quantity.text, let i = Int(str) {
            quantity.text = "\(i+1)"
        }
    }

    @IBAction func decreaseTapped(decrease: UIButton){
        if let str: String = quantity.text, let i = Int(str) {
            if (i > 1) {
                quantity.text = "\(i-1)"
            }
            else {
                cartUnselected.isHidden = false
                cartSelected.isHidden = true
            }
        }
    }
    
}
