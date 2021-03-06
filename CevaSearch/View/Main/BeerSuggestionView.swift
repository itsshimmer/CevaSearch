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
                ForEach(someBeersToShow()) { beer in
                    BeerSuggestionCellView(beer: beer)
                        .padding(.horizontal, 4)
                }
            }
            .padding(.bottom, 5)
        }
    }
}

struct BeerSuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        BeerSuggestionView(beerList: beers)
    }
}
