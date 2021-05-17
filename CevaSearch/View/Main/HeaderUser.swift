//
//  HeaderUser.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 10/05/21.
//

import SwiftUI


struct HeaderUser: View {
    
    @State var userName: String
    @State var year = DateDisplay().displayYear()
    @State var month = DateDisplay().displayMonth()
    @State var day = DateDisplay().displayDay()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Hi, \(userName)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(    .leading)
                    Spacer()
                    
                }
                Text("\(month) \(day)th, \(year)")
                    .font(.subheadline)
            }
            .padding([.top, .leading, .trailing])
            Button(action: {}) {
                HStack {
                    Image(systemName: "person.fill")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.black)
                }
                .padding()
                .background(Color.gray)
                .mask(Circle())
            }
            .padding()
            .padding(.top)
        }
    }
}

struct HeaderUser_Previews: PreviewProvider {
    static var previews: some View {
        HeaderUser(userName: "Brentano")
    }
}
