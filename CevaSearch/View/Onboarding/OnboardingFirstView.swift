//
//  OnboardingFirstView.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 20/05/21.
//

import SwiftUI

struct OnboardingFirstView: View {
    
    @State var subText: String
    
    var body: some View {
        ZStack {
            Image("Gradiente")

                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Spacer()
                Text("Find your favorite beer")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    .padding(.bottom)
                    .offset(x: 0, y: 60)
                Text("\(subText)")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    .padding(.bottom)
                    .padding()
                    .offset(x: -12, y: 34)
                
                HStack {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                .font(.title)
                            Text("Next")
                                .fontWeight(.semibold)
                                .font(.title)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(40)
                        .frame(width: 340, height: 54, alignment: .bottomTrailing)
                    }
                }
                .padding()
            }
            .padding(.leading)
            .padding(.bottom, 40)
        }
        
        .ignoresSafeArea()
        
    }
}





struct OnboardingFirstView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFirstView(subText: "CevaSearch te convida para uma comunidade única de amantes de cerveja que estão dispostos a compartilhar conhecimento, e aprender mais sobre essa facinante bebida que é a cerveja. Comece a explorar esse novo mundo agora!")
    }
}
