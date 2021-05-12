//
//  MainView.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        NavigationView() {
            VStack(alignment: .leading) {
                HeaderUser(userName: "Brentano")
                SearchHeaderView()
                VStack(alignment: .leading) {
                    Text("7 results founded")
                        .font(.subheadline)
                        .fontWeight(.semibold).multilineTextAlignment(.leading)
                    List(beers) { beer in
                        NavigationLink(
                            destination: BeerView(beer: beer)
                        ) {
                            BeerInfoCell(beer: beer)
                        }
                    }
                }
                BeerSuggestionView(beerList: beers)
            }
            //.padding(.all, 10)
            
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
        Spacer()
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
