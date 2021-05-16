//
//  BeerModel.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import Foundation
import SwiftUI
import CoreLocation

let userDefaults = UserDefaults.standard
var favourites = userDefaults.object(forKey: "IsFavourite") as? [Int] ?? []

struct Beer: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var type: String
    var ibu: Double
    var abv: Double
    var color: String
    var temperature: String
    var food: String
    var origin: String
    var disponibility: String
    
    private var imageName: String
        var image: Image {
            Image(imageName)
    }

    var isFavourite: Bool {
        get {
            return favourites.contains(self.id)
        }
        set(newValue) {
            if newValue == true {
                favourites.append(self.id)
            } else {
                favourites = favourites.filter { $0 != self.id }
            }
            userDefaults.set(favourites, forKey: "IsFavourite")
        }
    }
}
