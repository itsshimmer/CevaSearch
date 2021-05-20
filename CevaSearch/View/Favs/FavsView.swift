//
//  FavsView.swift
//  CevaSearch
//
//  Created by Alex Freitas on 15/05/21.
//

import SwiftUI

struct FavsView: View {
    
    @State var allFavs = listAllFavs()
    @State var searchText = ""
    
    var body: some View {
        NavigationView() {
            VStack {
                Text("Favs")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    .padding()
                    .padding(.bottom, 5)
                TextField("Procure por uma cerveja pelo nome, IBU, tipo, cor...",text: $searchText)
                    .padding(.leading,40)
                    .frame(width: 350, height: 50, alignment: .center)
                    .background(Color.init(#colorLiteral(red: 0.9492809176, green: 0.9488533139, blue: 0.968627451, alpha: 1)))
                    .cornerRadius(8)
                    .overlay (
                        HStack{
                            Image(systemName:"magnifyingglass")
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                            Spacer()
                        }
                        .padding(.horizontal,10)
                    )
                    .padding(.top, 10)
                
//                List(getFilter(list: listAllFavs())) { fav in
//                    NavigationLink(destination: BeerView(beer: fav)) {
//                        BeerHeaderInfoFavView(beer: fav)
//                    }
//                }
                ScrollView {
                    ForEach(getFilter(list: listAllFavs())) { fav in
                        HStack {
                            NavigationLink(destination: BeerView(beer: fav)) {
                                BeerHeaderInfoFavView(beer: fav)
                                    .padding(.leading, 10)
                            }
                            .ignoresSafeArea()
                            Spacer()
                        }
                    }
                }
                .onAppear() {
                    allFavs = listAllFavs()
                }
                .navigationTitle("Favs")
                .navigationBarHidden(true)
                
            }
        }
    }
    
    func getFilter(list: [Beer]) -> [Beer]{
        if searchText != "" {
            return beers.filter {
                $0.name.uppercased().contains(searchText.uppercased())
            }
        }
        return allFavs
    }
}

func listAllFavs() -> [Beer] {
    let favsIds = FavouriteManager.favourites
    var allFavs: [Beer] = []
    
    for beer in beers {
        for fav in favsIds {
            if beer.id == fav {
                allFavs.append(beer)
            }
        }
    }
    return allFavs
}

struct FavsView_Previews: PreviewProvider {
    static var previews: some View {
        FavsView()
    }
}
