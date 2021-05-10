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


