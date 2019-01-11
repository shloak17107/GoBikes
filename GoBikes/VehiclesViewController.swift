//
//  VehiclesViewController.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 10/30/18.
//  Copyright © 2018 GoBikes. All rights reserved.
//

import UIKit

class VehiclesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let bikeName = ["Bajaj Avenger", "Honda Activa", "KTM Duke", "Yamaha R15", "Royal Enfield Classic 350"]
    
    let bikeImage = [UIImage(named: "bajajavenger"), UIImage(named: "hondaactiva"), UIImage(named: "ktmduke"), UIImage(named: "yamahar15"), UIImage(named: "royalenfieldclassic350")]
    
    let weekdayPrice = ["450", "450", "550", "550", "650"]
    
    let weekendPrice = ["550", "550", "650", "650", "750"]
    
    let bikeRating = ["4.7", "4.7", "4.8", "4.5", "4.4"]
    
    let bikeMileage = [28.7, 25.7, 24.7, 29.7, 48.7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bikeName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.bikeName.text = bikeName[indexPath.row]
        cell.bikeImage.image = bikeImage[indexPath.row]
        cell.bikeRating.text = bikeRating[indexPath.row]
        cell.weekdayPrice.text = weekdayPrice[indexPath.row]
        cell.weekendPrice.text = weekendPrice[indexPath.row]
        cell.mileage.text = "Mileage: \(bikeMileage[indexPath.row]) Km/L"
        cell.cartSelected.isHidden = true
        
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
        performSegue(withIdentifier: "notificationsSegue2", sender: self)
    }

}
