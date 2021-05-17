//
//  FavouriteManager.swift
//  CevaSearch
//
//  Created by Alex Freitas on 16/05/21.
//

import Foundation

struct FavouriteManager {
    static var favourites: [Int] {
        return UserDefaults.standard.object(forKey: "Favourites") as? [Int] ?? []
    }

    static func isBeerFavourited(id: Int) -> Bool {
        return favourites.contains(id)
    }

    static func favouriteBeer(id: Int) {
        var newFavourites = favourites
        newFavourites.append(id)
        UserDefaults.standard.set(newFavourites, forKey: "Favourites")
    }

    static func unfavouriteBeer(id: Int) {
        var newFavourites = favourites
        newFavourites = favourites.filter { $0 != id }
        UserDefaults.standard.set(newFavourites, forKey: "Favourites")
    }
}
