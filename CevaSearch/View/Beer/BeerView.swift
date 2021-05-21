//
//  BeerView.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import SwiftUI

struct BeerView: View {
    //    MARK: as imagens devem ter o mesmo tamanho a 480 ou um pouco mais, imagens muito grandes ficam complicadas de lidar e causam bugs
    
//    func stringN(beerSize: String) -> String{
//        let first: String =  beerSize
//        let endFirtsLine = first.characters.firstIndexOf(",")!
//        let newSize = first.replacingCharacters(in: endFirtsLine, with: "\n")
//
//    }
    
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
                                reader.frame(in: .global).minY + 480 : 480)
                }
                .frame(height: 480)
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
                        .fontWeight(.bold)
                        .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                    Spacer()
                }
                //Spacer(minLength: -30)
                
                HStack{
                    VStack(alignment:.leading){
                        
                        HStack {
                            Text("Tamanho:")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                            Text("\(beer.disponibility)")
                                .font(.system(size: 15))
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                                .multilineTextAlignment(.leading)                            
                        }

                        Spacer(minLength: 3)
                        
                        HStack {
                            Text("ABV:")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                            Text("\(String(format: "%.2f", beer.abv))")
                                .font(.system(size: 15))
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                        }
                        Spacer(minLength: 3)
                        
                        HStack {
                            Text("Cor:")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                            Text("\(beer.color)")
                                .font(.system(size: 15))
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                        }
                        Spacer(minLength: 3)
                        HStack {
                            Text("IBU:")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))

                            Text("\(String(format: "%.2f", beer.ibu))")
                                .font(.system(size: 15))
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                        }
                    }
                    Spacer()
                    VStack(alignment:.leading){
                        
                        HStack {
                            Text("Temperatura:")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))

                            Text("\(beer.temperature)")
                                .font(.system(size: 15))
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                        }
                        Spacer(minLength: 3)
                        
                        HStack {
                            Text("Origem:")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))

                            Text("\(beer.origin)")
                                .font(.system(size: 15))
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                        }
                        Spacer(minLength: 3)
                        
                        HStack {
                            Text("Tipo:")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))

                            Text("\(beer.type)")
                                .font(.system(size: 15))
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                        }
                    }
                    .padding(.bottom, 20.0)
                }
                //.padding(.bottom, 40.0)
                VStack(alignment: .leading) {
                    Divider()
                        .background(Color.black)
                    VStack(alignment: .leading){
                        Text("Harmonização:")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                            .padding(.bottom, 5)
                        Text(beer.food)
                            .font(.system(size: 15))
                            .padding(.bottom, 200.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
                    }
                    .frame( alignment: .leading)
                }
                
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
