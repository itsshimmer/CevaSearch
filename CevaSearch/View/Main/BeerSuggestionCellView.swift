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
        NavigationLink(destination: BeerView(beer: beer)) {
            beer.image
                
                .resizable()
                .frame(width: 90, height: 100)
                
                .aspectRatio(contentMode: .fill)
//                .foregroundColor(Color.black)
//                .padding()
//                .background(Color.gray)
                .mask(Circle())
                .shadow(radius: 3, x: 1, y: 4)
        }
    }
}

struct BeerSuggestionCellView_Previews: PreviewProvider {
    static var previews: some View {
        BeerSuggestionCellView(beer: beers.randomElement()!)
    }
}
