//
//  MainView.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import SwiftUI

struct MainView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView() {
            VStack(alignment: .leading) {
                TextField("Type your search",text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
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
                
                
            }
            .padding(.all, 10)
            
        }
    }
    
}





struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}


