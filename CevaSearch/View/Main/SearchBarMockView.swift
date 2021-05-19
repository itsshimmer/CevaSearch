//
//  SearchBarMockView.swift
//  CevaSearch
//
//  Created by João Brentano on 10/05/21.
//

import SwiftUI

struct SearchBarMockView: View {
    
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: .infinity, height: 50)
                .foregroundColor(Color.init(#colorLiteral(red: 0.9492809176, green: 0.9488533139, blue: 0.968627451, alpha: 1)))
            HStack {
                Text("  \(Image(systemName: "magnifyingglass")) Procure por uma cerveja pelo nome...")
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    .font(.subheadline)
            }
        }
    }
}

struct SearchBarMockView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarMockView()
            .padding(.horizontal)
            
    }
}
