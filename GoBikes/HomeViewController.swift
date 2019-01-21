//
//  HomeViewController.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 10/30/18.
//  Copyright © 2018 GoBikes. All rights reserved.
//

import UIKit
import SideMenu

class HomeViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickupView: UIView!
    @IBOutlet weak var pickupButton: UIButton!
    @IBOutlet weak var pickupTextField: UITextField!
    @IBOutlet weak var dropView: UIView!
    @IBOutlet weak var dropButton: UIButton!
    @IBOutlet weak var dropTextField: UITextField!
    @IBOutlet weak var btnSeeBikes: UIButton!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // For image animation
        let images = [UIImage(named: "bajajavenger"), UIImage(named: "hondaactiva"), UIImage(named: "ktmduke"), UIImage(named: "yamahar15"), UIImage(named: "royalenfieldclassic350")]
        let animatedImage = UIImage.animatedImage(with: images as! [UIImage], duration: 5.0)
        imageView.image = animatedImage
        
        // For side menu
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        SideMenuManager.default.menuWidth = max(round(min((UIScreen.main.bounds.width), (UIScreen.main.bounds.height)) * 0.6), 220)
        SideMenuManager.default.menuAnimationFadeStrength = 0.5
        
        // For date selectors
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .dateAndTime
        datePicker?.addTarget(self, action: #selector(HomeViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
        pickupTextField.inputView = datePicker
        dropTextField.inputView = datePicker
        
        // Shadow and Radius
        btnSeeBikes.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btnSeeBikes.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        btnSeeBikes.layer.shadowOpacity = 1.0
        btnSeeBikes.layer.shadowRadius = 0.0
        btnSeeBikes.layer.masksToBounds = false
        btnSeeBikes.layer.cornerRadius = 4.0
        
        pickupView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        pickupView.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        pickupView.layer.shadowOpacity = 1.0
        pickupView.layer.shadowRadius = 0.0
        pickupView.layer.masksToBounds = false
        pickupView.layer.cornerRadius = 4.0

        dropView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        dropView.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        dropView.layer.shadowOpacity = 1.0
        dropView.layer.shadowRadius = 0.0
        dropView.layer.masksToBounds = false
        dropView.layer.cornerRadius = 4.0
        
    }

    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy hh:mm a"
        if (pickupTextField.isFirstResponder) {
            pickupTextField.text = dateFormatter.string(from: datePicker.date)
        }
        else if (dropTextField.isFirstResponder) {
            dropTextField.text = dateFormatter.string(from: datePicker.date)
        }
    }
    
    @IBAction func pickupClick(_ sender: UIButton) {
        pickupTextField.becomeFirstResponder()
    }
    
    @IBAction func dropClick(_ sender: Any) {
        dropTextField.becomeFirstResponder()
    }
    
    @IBAction func seeBikesClick(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
    }
    
    @IBAction func notificationsButton(_ sender: Any) {
        performSegue(withIdentifier: "notificationsSegue1", sender: self)
    }
    
}

