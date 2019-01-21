//
//  SideMenuViewController.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 1/21/19.
//  Copyright © 2019 GoBikes. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var kycButton: UIButton!
    @IBOutlet weak var referAndEarnButton: UIButton!
    @IBOutlet weak var ordersButton: UIButton!
    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var faqButton: UIButton!
    @IBOutlet weak var feedbackButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kycButton.imageView?.contentMode = .scaleAspectFit
        referAndEarnButton.imageView?.contentMode = .scaleAspectFit
        ordersButton.imageView?.contentMode = .scaleAspectFit
        wishlistButton.imageView?.contentMode = .scaleAspectFit
        contactButton.imageView?.contentMode = .scaleAspectFit
        faqButton.imageView?.contentMode = .scaleAspectFit
        feedbackButton.imageView?.contentMode = .scaleAspectFit
        logoutButton.imageView?.contentMode = .scaleAspectFit
    }

}
