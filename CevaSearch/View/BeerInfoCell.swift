//
//  BeerInfoCell.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 05/05/21.
//

import SwiftUI

struct BeerInfoCell: View {
    
    var beer: Beer
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("friendship")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(beer.name)
                .font(.title)
            Text(beer.type)
                .font(.subheadline)
        }
    }
}


struct BeerInfoCell_Previews: PreviewProvider {
    static var previews: some View {
        BeerInfoCell(beer: beers[0])
    }
}
