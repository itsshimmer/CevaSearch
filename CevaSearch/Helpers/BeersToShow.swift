//
//  BeersToShow.swift
//  CevaSearch
//
//  Created by Alex Freitas on 20/05/21.
//

import Foundation

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
        for i in 0...shuffledBeers.count - 1 {
            suggestedBeers.append(shuffledBeers[i])
        }
    }

    return showcase(array: suggestedBeers, size: 5)
}

func someBeersToShow() -> [Beer] {
    var notFavs: [Beer] = []

    for beer in beers {
        if beer.isFavourite == false {
            notFavs.append(beer)
        }
    }

    let shuffled = notFavs.shuffled()

    return showcase(array: shuffled, size: 9)
}

func showcase(array: [Beer], size: Int) -> [Beer] {
    var newArray: [Beer] = []

    if array.count >= size {
        for i in 0...size - 1 {
            newArray.append(array[i])
        }
        return newArray
    } else {
        return array
    }
}
