//
//  BeerModel.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import Foundation
import SwiftUI
import CoreLocation

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
            if imageName == "" {
                return Image("beer default")
            } else {
                return Image(imageName)
            }
    }

    var isFavourite: Bool {
        get {
            return FavouriteManager.isBeerFavourited(id: self.id)
        }
        set(newValue) {
            if newValue == true {
                FavouriteManager.favouriteBeer(id: self.id)
            } else {
                FavouriteManager.unfavouriteBeer(id: self.id)
            }
        }
    }
}
