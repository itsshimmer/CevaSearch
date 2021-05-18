//
//  BeerView.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import SwiftUI

struct BeerView: View {
    //    MARK: as imagens devem ter o mesmo tamanho a 480 ou um pouco mais, imagens muito grandes ficam complicadas de lidar e causam bugs
    var beer: Beer
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false , content: {
            ZStack {
                GeometryReader{reader in
                    beer.image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .offset(y: -reader.frame(in: .global).minY)
                        //Add parallax effect...
                        .frame(width: UIScreen.main.bounds.width, height:
                                reader.frame(in: .global).minY > 0 ?
                                reader.frame(in: .global).minY + 550 : 540)
                }
                .frame(height: 500)
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        FavsButton(beer: beer, isFav: beer.isFavourite)
                            .padding(.horizontal, 30)
                            .padding(.bottom, 40)
                    }
                }
            }
            VStack (alignment: .leading, spacing: 15){
                
                HStack(alignment: .center) {
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 80, height: 5)
                        .cornerRadius(8)
                        .offset(x:139 )
                }
                HStack {
                    Text(beer.name)
                        .font(.title)
                    Spacer()
                }
                VStack(alignment: .leading) {
                    
                    HStack{
                        Text("Size: \(beer.disponibility)")
                            .font(.system(size: 15))
                        Spacer(minLength: 2)
                        Text("ABV: \(String(format: "%.2f", beer.abv))")
                            .font(.system(size: 15))
                        Spacer()
                    }
                    HStack{
                        Text("Cor: \(beer.color)            ")
                            .font(.system(size: 15))
                        Spacer(minLength: 2)
                        Text("IBU: \(String(format: "%.2f", beer.ibu))")
                            .font(.system(size: 15))
                        Spacer()
                    }
                    HStack{
                        Text("Temperatura: \(beer.temperature)")
                            .font(.system(size: 15))
                        Spacer()
                        Text("Origem: \(beer.origin)")
                            .font(.system(size: 15))
                    }
                    
                    HStack{
                        Text("Tipo: \(beer.type)")
                            .font(.system(size: 15))
                        Spacer()
                    }
                    Divider()
                        .background(Color.black)
                    VStack(alignment: .leading){
                        Text("Harmonização:")
                        Text(beer.food)
                            .font(.system(size: 15))
                            .padding(.bottom, 30.0)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .frame( alignment: .leading)
                    
                }
                .padding(.bottom, 30.0)
                
            }
            .padding(.top,30)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(30)
            .offset(y: -35)
            
            
            
        })
        //.edgesIgnoringSafeArea(.top)
        .background(Color.white.edgesIgnoringSafeArea(.all))
        
    }
}

struct BeerView_Previews: PreviewProvider {
    static var previews: some View {
        BeerView(beer: beers[0])
    }
}
