//
//  OnboardingView.swift
//  CevaSearch
//
//  Created by João Brentano on 05/05/21.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var newUser: Bool
    
    var body: some View {
        Button(action: {
            newUser = false
        }) {
            Text("Click me")
        }
    }
}

//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView()
//    }
//}
