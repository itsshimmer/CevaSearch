//
//  FavsView.swift
//  CevaSearch
//
//  Created by Alex Freitas on 15/05/21.
//

import SwiftUI

struct FavsView: View {
    
    var body: some View {
        VStack {
            Text("Favs")
                .font(.title2)
                .fontWeight(.bold)
           // SearchBarView()
            //     .padding()
            List {
                BeerHeaderInfoFavView(beer: beers[1])
                BeerHeaderInfoFavView(beer: beers[2])
                BeerHeaderInfoFavView(beer: beers[3])
                BeerHeaderInfoFavView(beer: beers[4])
            }
            
        }
        .padding(.trailing)
        
    }
}

struct FavsView_Previews: PreviewProvider {
    static var previews: some View {
        FavsView()
    }
}
