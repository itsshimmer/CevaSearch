//
//  ContentView.swift
//  CevaSearch
//
//  Created by João Brentano on 04/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var newUser: Bool = false
    
    var body: some View {
        if(newUser) {
            OnboardingView(newUser: $newUser)
        } else {
            MainView()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
