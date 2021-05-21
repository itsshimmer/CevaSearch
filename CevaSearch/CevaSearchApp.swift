//
//  CevaSearchApp.swift
//  CevaSearch
//
//  Created by João Brentano on 04/05/21.
//

import SwiftUI

@main
struct CevaSearchApp: App {
    
    @State var newUser: Bool = true
    
    var view = TabBarView(pages: .constant([TabBarPage(page: SearchView()
                                                        .padding(.bottom, 50), icon: "SearchIcon", tag: "Search", color: Color(UIColor.systemGray4)),
            TabBarPage(page: MainView()
                                                                                     .padding(.bottom, 50), icon: "BeerIcon", tag: "Ceva", color: Color(UIColor.systemGray4)),
            TabBarPage(page: FavsView(), icon: "HeartIcon", tag: "Favs", color: Color(UIColor.systemGray4))]))
    
    var body: some Scene {
        WindowGroup {
            if(newUser) {
                OnboardingFirstView(newUser: $newUser)
            } else {
                //MainViewWithTabView()
                view
            }
        }
    }
}
