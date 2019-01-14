//
//  Bike.swift
//  GoBikes
//
//  Created by Shloak Aggarwal on 1/13/19.
//  Copyright © 2019 GoBikes. All rights reserved.
//

import UIKit

class Bike {
    
    var name: String
    var image: UIImage?
    var weekdayPrice: Int
    var weekendPrice: Int
    var rating: Float
    var mileage: Float
    var inCart: Int
    
    static var bikes = [Bike(name: "Bajaj Avenger", image: UIImage(named: "bajajavenger"), weekdayPrice: 450, weekendPrice: 550, rating: 4.7, mileage: 28.7), Bike(name: "Honda Activa", image: UIImage(named: "hondaactiva"), weekdayPrice: 450, weekendPrice: 550, rating: 4.7, mileage: 25.7), Bike(name: "KTM Duke", image: UIImage(named: "ktmduke"), weekdayPrice: 550, weekendPrice: 650, rating: 4.8, mileage: 24.7), Bike(name: "Yamaha R15", image: UIImage(named: "yamahar15"), weekdayPrice: 550, weekendPrice: 650, rating: 4.5, mileage: 29.7), Bike(name: "Royal Enfield Classic 350", image: UIImage(named: "royalenfieldclassic350"), weekdayPrice: 650, weekendPrice: 750, rating: 4.4, mileage: 48.7)]
    
    init(name: String, image: UIImage?, weekdayPrice: Int, weekendPrice: Int, rating: Float, mileage: Float) {
        self.name = name
        self.image = image
        self.weekdayPrice = weekdayPrice
        self.weekendPrice = weekendPrice
        self.rating = rating
        self.mileage = mileage
        inCart = 0
    }
    
}
