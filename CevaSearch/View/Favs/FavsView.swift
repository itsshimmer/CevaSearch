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
        
        
        VStack {
            TextField("Procure por uma cerveja pelo nome, IBU, tipo, cor...",text: $searchText)
                .padding(.leading,40)
                .frame(width: 350, height: 50, alignment: .center)
                .background(Color(red: 0, green: 0, blue: 0, opacity: 0.2))
                .cornerRadius(8)
                .overlay (
                    HStack{
                        Image(systemName:"magnifyingglass")
                            .foregroundColor(Color.black)
                        Spacer()
                    }
                    .padding(.horizontal,10)
                )
            
            List(getFilter(list: listAllFavs())) { fav in
                BeerHeaderInfoFavView(beer: fav)
            }
            .onAppear() {
                allFavs = listAllFavs()
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


