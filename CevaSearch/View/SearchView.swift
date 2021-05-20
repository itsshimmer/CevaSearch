//
//  SearchView.swift
//  CevaSearch
//
//  Created by João Brentano on 20/05/21.
//

import SwiftUI

struct SearchView: View {
    
    @State var allFavs = beers
    @State var searchText = ""
    
    var body: some View {
        NavigationView() {
            ZStack {
                VStack {
                    Text("Search")
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
                    //                        List(getFilter(list: beers)) { fav in
                    //                            NavigationLink(destination: BeerView(beer: fav)) {
                    //                                BeerHeaderInfoFavView(beer: fav)
                    //                            }
                    //                        }
                    //                        .navigationBarHidden(true)
                    ScrollView {
                        ForEach(getFilter(list: beers)) { beer in
                            HStack {
                                NavigationLink(destination: BeerView(beer: beer)) {
                                    BeerHeaderInfoFavView(beer: beer)
                                        .padding(.leading, 10)
                                }
                                .ignoresSafeArea()
                                Spacer()
                            }
                        }
                    }
                    .navigationBarTitle("Search")
                    .navigationBarHidden(true)
                    .onAppear() {
                        allFavs = beers
                    }
                }
            }
        }
        Spacer()
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
