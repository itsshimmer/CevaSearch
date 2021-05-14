//
//  ProfileView.swift
//  CevaSearch
//
//  Created by João Brentano on 13/05/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Profile")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .padding()
            HStack {
                Text("João Brentano")
                Image(systemName: "pencil")
            }
            HStack {
                ZStack {
                    VStack {
                        Image("heineken")
                            .foregroundColor(.gray)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Image(systemName: "camera")
                            .padding(.bottom, 35)
                    }
                }
            }
            .mask(Circle())
            .padding()
            
            Spacer()
            
            VStack {
                HStack {
                    Text("Preferences")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                HStack {
                    Image(systemName: "thermometer")
                    Text("Temperature")
                    Spacer()
                    Text("Toggle")
                    
                }
                .padding()
                HStack {
                    Image(systemName: "ruler")
                    Text("Unit")
                    Spacer()
                    Text("Toggle")
                    
                }
                .padding()
                HStack {
                    Image(systemName: "moon")
                    Text("Dark mode")
                    Spacer()
                    Text("Toggle")
                    
                }
                .padding()
                HStack {
                    Image(systemName: "bell")
                    Text("Notifications")
                    Spacer()
                    Text("Toggle")
                    
                }
                .padding()
                HStack {
                    Image(systemName: "star")
                    Text("Suggestions")
                    Spacer()
                    Text("Toggle")
                    
                }
                .padding()
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    //TO DO
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(.black)
                        Text("Save your modifications")
                            .foregroundColor(.white)
                    }
                    .frame(minWidth: 100, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
