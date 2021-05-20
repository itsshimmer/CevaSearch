//
//  SearchHeaderView.swift
//  CevaSearch
//
//  Created by João Brentano on 10/05/21.
//

import SwiftUI

struct SearchHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Encontre sua cerveja favorita")
                    .bold()
                    .font(.title2)
                    .padding(.leading)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                Spacer()
            }
            SearchBarView()
                .padding(.leading)
                .padding(.trailing)
        }
    }
}

struct SearchHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SearchHeaderView()
    }
}
