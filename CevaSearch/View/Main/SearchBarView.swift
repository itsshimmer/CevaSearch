//
//  SearchBarView.swift
//  CevaSearch
//
//  Created by João Brentano on 10/05/21.
//

import SwiftUI

struct SearchBarView: View {
    
    @State var searchText = ""
    
    
    var body: some View {
        TextField("🔍 Search a beer for name, IBU, type, color...",text: $searchText)
            .foregroundColor(.gray)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(Color.black, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).cornerRadius(11.0)
            
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .padding(.horizontal)
            
    }
}
