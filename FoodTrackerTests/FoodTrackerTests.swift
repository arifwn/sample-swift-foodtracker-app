//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Arif Widi Nugroho on 5/16/16.
//  Copyright © 2016 Arif Widi Nugroho. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure case
        let noName = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really Bad Rating", photo: nil, rating: -5)
        XCTAssertNil(badRating, "Rating should not be negative");
    }
    
}
