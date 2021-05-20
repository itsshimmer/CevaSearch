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
        TextField("Procure por uma cerveja pelo nome, IBU, tipo, cor...",text: $searchText)
            .padding(.leading,40)
            .frame(width: 350, height: 50, alignment: .center)
            .background(Color.init(#colorLiteral(red: 0.9492809176, green: 0.9488533139, blue: 0.968627451, alpha: 1)))
            .cornerRadius(8)
            .overlay (
                HStack{
                    Image(systemName:"magnifyingglass")
                        .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    Spacer()
                }
                .padding(.horizontal,10)
            )
            .padding(.bottom, -10)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .padding(.horizontal)
            
    }
}
