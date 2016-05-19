//
//  Meal.swift
//  FoodTracker
//
//  Created by Arif Widi Nugroho on 5/19/16.
//  Copyright © 2016 Arif Widi Nugroho. All rights reserved.
//

import UIKit


class Meal {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialized stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or the rating is negative
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
