//
//  ProfileViewController.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 10/30/18.
//  Copyright © 2018 GoBikes. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func notificationsButton(_ sender: Any) {
        performSegue(withIdentifier: "notificationsSegue4", sender: self)
    }
    
}
