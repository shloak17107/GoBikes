//
//  CartViewController.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 10/30/18.
//  Copyright © 2018 GoBikes. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func notificationsButton(_ sender: Any) {
        performSegue(withIdentifier: "notificationsSegue3", sender: self)
    }
    
}
