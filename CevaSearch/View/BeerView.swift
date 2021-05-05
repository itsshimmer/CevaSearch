//
//  BeerView.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import SwiftUI

struct BeerView: View {
    var beer: Beer
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    
                }) {
                    Text("Close")
                        .padding()
                }
                Spacer()
                Text("Profile")
                    .padding()
            }
            HStack {
                Text(beer.name)
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Spacer()
            VStack {
                HStack{
                    Text("Tipo: \(beer.type)")
                    Spacer()
                }
                HStack{
                    Text("Cor: \(beer.color)")
                    Spacer()
                }
                HStack{
                    Text("ABV: \(beer.abv)")
                    Spacer()
                }
                HStack{
                    Text("IBU: \(beer.ibu)")
                    Spacer()
                }
                HStack{
                    Text("Temperatura: \(beer.temperature)")
                    Spacer()
                }
                HStack{
                    Text("Harmonização: \(beer.food)")
                    Spacer()
                }
                HStack{
                    Text("Origem: \(beer.origin)")
                    Spacer()
                }
                HStack{
                    Text("Disponibilidade: \(beer.disponibility)")
                    Spacer()
                }
            }
            .padding()
            Spacer()
            HStack {
                Button(action: {
                    
                }) {
                    Text("Get Directions")
                        .padding()
                }
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Share")
                        .padding()
                }
            }
        }
    }
}

struct BeerView_Previews: PreviewProvider {
    static var previews: some View {
        BeerView(beer: beers[0])
    }
}
