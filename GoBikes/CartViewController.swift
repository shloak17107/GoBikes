//
//  CartViewController.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 10/30/18.
//  Copyright © 2018 GoBikes. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var bikes = Bike.bikes
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.collectionView!.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count = 0
        
        bikes = bikes.sorted { (bike1, bike2) -> Bool in
            if bike1.inCart > bike2.inCart {
                return true
            }
            return false
        }
        
        for bike in bikes {
            if (bike.inCart > 0) {
                count += 1
            }
        }
        
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.bikeName.text = bikes[indexPath.row].name
        cell.bikeImage.image = bikes[indexPath.row].image
        cell.bikeRating.text = "\(bikes[indexPath.row].rating)"
        cell.weekdayPrice.text = "\(bikes[indexPath.row].weekdayPrice)"
        cell.weekendPrice.text = "\(bikes[indexPath.row].weekendPrice)"
        cell.mileage.text = "Mileage: \(bikes[indexPath.row].mileage) Km/L"
        cell.cartSelected.isHidden = true
            
        //Avoids cart buttons from dissappearing when scrolling
        if (bikes[indexPath.row].inCart == 0) {
            cell.cartUnselected.isHidden = false
            cell.cartSelected.isHidden = true
            cell.quantity.text = "\(0)"
        }
        else {
            cell.cartUnselected.isHidden = true
            cell.cartSelected.isHidden = false
            cell.quantity.text = "\(bikes[indexPath.row].inCart)"
        }
        
        //This creates the shadows and modifies the cards a little bit
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        cell.getDirections.imageEdgeInsets = UIEdgeInsets(top: 5, left: (cell.getDirections.bounds.width - 35), bottom: 0, right: 0)
        cell.getDirections.titleEdgeInsets = UIEdgeInsets(top: 0, left: (35 - cell.getDirections.bounds.width), bottom: 0, right: 0)
        
        
        return cell
    }

    @IBAction func notificationsButton(_ sender: Any) {
        performSegue(withIdentifier: "notificationsSegue3", sender: self)
    }
    
}
