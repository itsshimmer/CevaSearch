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
                Text("Find your favorite beer")
                    .font(.title)
                    .padding(.leading)
                Spacer()
            }
            SearchBarView()
                .padding()
        }
    }
}

struct SearchHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SearchHeaderView()
    }
}
