//
//  ScrollViewHorizontal.swift
//  CevaSearch
//
//  Created by Willian Magnum Albeche on 10/05/21.
//

import SwiftUI

struct HorizontalScrollView: View {
    
    @State var render:Bool = false
    
    private func getScale(proxy: GeometryProxy) -> CGFloat{
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        let midPoint: CGFloat = 215
        var scale: CGFloat = 1.0
        let deltaXAnimationThreshold: CGFloat = 125
        
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
        if diffFromCenter < deltaXAnimationThreshold {
            scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
        }
        return scale
    }
    var body: some View {
        
        VStack {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(beers.shuffled()) { beer in
                            ZStack {
                                GeometryReader { proxy in
                                    let scale = getScale(proxy: proxy)
                                    VStack(spacing: 8) {
                                        ZStack {
                                            NavigationLink(destination: BeerView(beer: beer)) {
                                            beer.image
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 160)
                                                .clipped()
                                                .cornerRadius(8)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .stroke(Color(white: 0.4))
                                                )
                                                .shadow(radius: 3)
                                            }
                                            VStack {
                                                HStack {
                                                    Spacer()
                                                    FavsButton(beer: beer)
                                                        .padding()
                                                }
                                                Spacer()
                                            }
                                        }
                                        
                                    }
                                    .scaleEffect(.init(width: scale, height: scale))
                                    //                                    .animation(.spring(), value: 1)
                                    .animation(.easeOut(duration: 1))
                                    .padding(.vertical)
                                }
                                
                                .frame(width: 130, height: 300)
                                
                                
                            }
                        }
                        .padding(.horizontal, 32)
                        .padding(.vertical, 32)
                    }
                    .padding(32)
                }
                .frame( height: 400)
            }
        }
    }
}

struct ScrollViewHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
