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
                HorizontalScrollView()
                BeerSuggestionView(beerList: beers)
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
