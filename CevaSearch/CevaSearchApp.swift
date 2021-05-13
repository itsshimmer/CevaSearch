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
                MainViewWithTabView()
            }
        }
    }
}
