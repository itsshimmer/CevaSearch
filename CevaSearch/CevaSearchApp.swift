//
//  CevaSearchApp.swift
//  CevaSearch
//
//  Created by João Brentano on 04/05/21.
//

import SwiftUI

@main
struct CevaSearchApp: App {
    
    @State var newUser: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if(newUser) {
                OnboardingView(newUser: $newUser)
            } else {
                //MainViewWithTabView()
                TabBarView(pages: .constant([TabBarPage(page: MainView()
                                                            .padding(.bottom, 50), icon: "compass", tag: "brunin god", color: Color(UIColor.systemGray4)),
                                             TabBarPage(page: MainView()
                                                                                         .padding(.bottom, 50), icon: "BeerIcon", tag: "Ceva", color: Color(UIColor.systemGray4)),
                                             TabBarPage(page: FavsView(), icon: "HeartIcon", tag: "Favs", color: Color(UIColor.systemGray4))]))
            }
        }
    }
}
