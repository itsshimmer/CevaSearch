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
        ZStack {
            TextField("   \(Image(systemName: "magnifyingglass")) Procure por uma cerveja pelo nome, IBU, tipo, cor...",text: $searchText)
                .frame(width: .infinity, height: 50, alignment: .center)
                .background(Color(red: 0, green: 0, blue: 0, opacity: 0.2))
                .cornerRadius(8)
                
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .padding(.horizontal)
            
    }
}
