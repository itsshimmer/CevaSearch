//
//  BeerHeaderInfoFavView.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 17/05/21.
//

import SwiftUI
import Foundation

struct BeerHeaderInfoFavView: View {
    
    var beer: Beer
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    beer.image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .scaledToFill()
                        .frame(width: 125, height: 125)
                        .clipped()
                        .cornerRadius(8)
    //                    .overlay(
    //                        RoundedRectangle(cornerRadius: 8)
    //                            .stroke(Color(white: 0.4))
    //                    )
                        .shadow(radius: 3)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    HStack {
                        Spacer()
                        VStack {
                            FavsAlertButton(beer: beer, isFav: beer.isFavourite)
                                .padding(5)
                            Spacer()
                        }
                    }
                    
                    .frame(width: 125, height: 125)
                }
                VStack(alignment: .leading) {
                    Text("\(beer.name)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.trailing)
                        .aspectRatio(contentMode: .fit)
                    Text("\(beer.type)")
                        .fontWeight(.semibold)
                        .padding([.top, .trailing])
                            .aspectRatio(contentMode: .fit)
                    Divider()
                    Text("\(beer.origin)")
                        .fontWeight(.semibold)
                        .padding(.trailing)
                        .aspectRatio(contentMode: .fill)
                    
                }
                .padding([.bottom, .trailing])
                .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct BeerHeaderInfoFavView_Previews: PreviewProvider {
    static var previews: some View {
        BeerHeaderInfoFavView(beer: beers[13])
    }
}
