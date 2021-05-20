//
//  BeerSuggestionView.swift
//  CevaSearch
//
//  Created by João Brentano on 11/05/21.
//

import SwiftUI

struct BeerSuggestionView: View {
    
    var beerList: [Beer]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(suggestedBeers()) { beer in
                    BeerSuggestionCellView(beer: beer)
                        .padding(.horizontal, 4)
                }
            }
            .padding(.bottom, 5)
        }
    }
}

func suggestedBeers() -> [Beer] {
    let myFavs = listAllFavs()
    var ibuFavs = 0.0
    var numberOfFavs = 0.0

    for beer in myFavs {
        ibuFavs += beer.ibu
        numberOfFavs += 1.0
    }

    // MARK: critério adotado: a média de IBU das cervejas favoritadas
    let range = 7.0
    let ibuRef = ibuFavs / numberOfFavs
    var suggestedBeers: [Beer] = []

    for beer in beers {
        if beer.ibu >= ibuRef - range && beer.ibu <= ibuRef + range {
            suggestedBeers.append(beer)
        }
    }

    // MARK: caso não haja cervejas sugeridas, buscamos 7 aleatórias no banco
    if suggestedBeers == [] {
        let shuffledBeers = beers.shuffled()
        for i in 1...7 {
            suggestedBeers.append(shuffledBeers[i])
        }
    }

    return suggestedBeers
}

struct BeerSuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        BeerSuggestionView(beerList: beers)
    }
}
