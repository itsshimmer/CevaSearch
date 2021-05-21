//
//  OnboardingFirstView.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 20/05/21.
//

import SwiftUI

struct OnboardingFirstView: View {
    
   // @State var subText: String
    @Binding var newUser: Bool
    
    var body: some View {
        ZStack {
            Image("Gradiente")
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Spacer()
                Text("Encontre sua cerveja favorita!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    .padding(.horizontal)
                    .padding(.bottom, 3)
                   // .offset(x: 0, y: 60)
                Text("CevaSearch te convida para uma comunidade única de amantes de cerveja que estão dispostos a compartilhar conhecimento e aprender mais sobre essa fascinante bebida que é a cerveja. Comece a explorar esse novo mundo agora!")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    .padding(.horizontal)
                
                HStack {
                    Spacer()
                    Button(action: {
                        newUser = false
                    }) {
                        HStack {
                            //Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                //.font(.title)
                            Text("Next")
                                .fontWeight(.semibold)
                                .font(.title)
                        }
                        .frame(width: 150, height: 25)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.init(#colorLiteral(red: 0.950193584, green: 0.4540679455, blue: 0.02439603396, alpha: 1)))
                        .cornerRadius(40)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 60)
                        .shadow(radius: 2, x: 1, y: 4)
//                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                    }
                }
            }
        }
        
        .ignoresSafeArea()
        
    }
}

//
//
//
//
//struct OnboardingFirstView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingFirstView(subText: "CevaSearch te convida para uma comunidade única de amantes de cerveja que estão dispostos a compartilhar conhecimento e aprender mais sobre essa fascinante bebida que é a cerveja. Comece a explorar esse novo mundo agora!")
//    }
//}
