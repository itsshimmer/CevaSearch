//
//  ScrollViewHorizontal.swift
//  CevaSearch
//
//  Created by Willian Magnum Albeche on 10/05/21.
//

import SwiftUI

struct HorizontalScrollView: View {
    
    @State var render:Bool = false
    @State var someBeers = someBeersToShow()
    
    private func getScale(proxy: GeometryProxy) -> CGFloat{
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        let midPoint: CGFloat = 175
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
                    HStack(spacing: 70) {
                        ForEach(someBeers) { beer in
                            ZStack {
                                GeometryReader { proxy in
                                    let scale = getScale(proxy: proxy)
                                    VStack(spacing: 8) {
                                        ZStack {
                                            NavigationLink(destination: BeerView(beer: beer)) {
                                            beer.image
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 225)
                                                .clipped()
                                                .cornerRadius(8)
//                                                .overlay(
//                                                    RoundedRectangle(cornerRadius: 8)
//                                                        .stroke(Color(white: 0.4))
//                                                )
                                                .shadow(radius: 3)
                                            }
                                            VStack {
                                                HStack {
                                                    Spacer()
                                                    FavsButton(beer: beer, isFav: beer.isFavourite)
                                                        .padding()
                                                        .onAppear() {
                                                            
                                                        }
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

func someBeersToShow() -> [Beer] {
    var notFavs: [Beer] = []

    for beer in beers {
        if beer.isFavourite == false {
            notFavs.append(beer)
        }
    }

    let shuffled = notFavs.shuffled()
    var someBeers: [Beer] = []
    var limitBeersArray: Int

    // Número de cervejas na vitrine
    if shuffled.count >= 7 {
        limitBeersArray = 7
    } else {
        limitBeersArray = shuffled.count
    }
    for i in 0...limitBeersArray - 1 {
        someBeers.append(shuffled[i])
    }

    return someBeers
}

struct ScrollViewHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView(someBeers: someBeersToShow())
    }
}
