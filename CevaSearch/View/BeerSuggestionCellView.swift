//
//  BeerSuggestionCellView.swift
//  CevaSearch
//
//  Created by João Brentano on 11/05/21.
//

import SwiftUI

struct BeerSuggestionCellView: View {
    
    var beer: Beer
    
    var body: some View {
        Button(action: {}) {
            beer.image
                .resizable()
                .frame(width: 35, height: 75)
                .aspectRatio(contentMode: .fill)
                .foregroundColor(Color.black)
                .padding()
                .background(Color.gray)
                .mask(Circle())
        }
    }
}

struct BeerSuggestionCellView_Previews: PreviewProvider {
    static var previews: some View {
        BeerSuggestionCellView(beer: beers.randomElement()!)
    }
}
