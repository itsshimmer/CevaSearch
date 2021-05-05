//
//  BeerInfoCell.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 05/05/21.
//

import SwiftUI

struct BeerInfoCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("friendship")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Beer Title")
                .font(.title)
            Text("Beer type")
                .font(.subheadline)
        }
    }
}


struct BeerInfoCell_Previews: PreviewProvider {
    static var previews: some View {
        BeerInfoCell()
    }
}
