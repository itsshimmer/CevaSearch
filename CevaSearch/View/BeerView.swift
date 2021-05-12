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
            .background(Color.black)
            
            
            ScrollView(.vertical, showsIndicators: false , content: {
                GeometryReader{reader in
                    Image("corona")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .offset(y: -reader.frame(in: .global).minY)
                        //Add parallax effect...
                        .frame(width: UIScreen.main.bounds.width, height:
                                reader.frame(in: .global).minY > 0 ?
                                reader.frame(in: .global).minY + 480 : 480)
                }
                .frame(height: 500)
                
                
                VStack (alignment: .leading, spacing: 15){
                    HStack {
                        Text(beer.name)
                            //.padding()
                            .font(.title)
                        Spacer()
                    }
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
                        HStack {
                            Button(action: {
                                
                            }) {
                                Text("Get Directions")
                                    .multilineTextAlignment(.leading)
                            }
                            Spacer()
                        }
                        .padding(.bottom)
                        
                        Text(teste)
                    }
                    
                }
                .padding(.top,35)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(30)
                .offset(y: -55)
                
                
            })
            .edgesIgnoringSafeArea(.all)
            .background(Color.gray.edgesIgnoringSafeArea(.all))
            
            //Spacer()
            //            HStack {
            //
            //                Spacer()
            //                Button(action: {
            //
            //                }) {
            //                    Text("Share")
            //                        .padding()
            //                }
            //            }
            //            .background(Color.black)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct BeerView_Previews: PreviewProvider {
    static var previews: some View {
        BeerView(beer: beers[0])
    }
}

var teste: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet leo quis lorem faucibus feugiat vitae dignissim mi. Integer tincidunt a mi et pellentesque. In vel fringilla leo. Morbi eu iaculis mi. Proin sed leo tempor, laoreet metus nec, tristique dui. Duis placerat dolor at accumsan tempus. Ut porttitor mi hendrerit ex egestas, et finibus tortor commodo. Suspendisse efficitur ultricies enim eu consequat. Cras luctus mi sit amet diam porttitor vulputate. Etiam lacinia ipsum ut euismod auctor. Ut malesuada ut massa non imperdiet. Quisque commodo nisi in lacinia tincidunt. Donec lobortis imperdiet elit, id tincidunt quam faucibus nec. Ut mauris ante, laoreet quis magna id, porttitor bibendum metus."
