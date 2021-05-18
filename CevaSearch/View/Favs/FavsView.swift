//
//  FavsView.swift
//  CevaSearch
//
//  Created by Alex Freitas on 15/05/21.
//

import SwiftUI

struct FavsView: View {

    @State var allFavs = listAllFavs()

    var body: some View {
        List(allFavs) { fav in
            BeerHeaderInfoFavView(beer: fav)
        }
        .onAppear() {
            allFavs = listAllFavs()
        }
    }
}

func listAllFavs() -> [Beer] {
    let favsIds = FavouriteManager.favourites
    var allFavs: [Beer] = []

    for beer in beers {
        for fav in favsIds {
            if beer.id == fav {
                allFavs.append(beer)
            }
        }
    }
    return allFavs
}

struct FavsView_Previews: PreviewProvider {
    static var previews: some View {
        FavsView()
    }
}


