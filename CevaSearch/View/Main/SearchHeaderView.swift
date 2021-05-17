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
