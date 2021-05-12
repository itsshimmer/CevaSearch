

//
//  ScrollViewHorizontal.swift
//  CevaSearch
//
//  Created by Willian Magnum Albeche on 10/05/21.
//

import SwiftUI

struct ScrollViewHorizontal: View {
    
    private func getScale(proxy: GeometryProxy) -> CGFloat{
        var scale:CGFloat = 1
        
        let x = proxy.frame(in: .global).minX
        
        let diff = abs(x)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }
        
        return scale
    }
    var body: some View {
        
        VStack {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 90) {
                        ForEach(0..<5){ index in
                            GeometryReader { proxy in
                                
                                let scale  = getScale(proxy: proxy)
                                
                                Image("friendship")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180)
                                    .clipped()
                                    .cornerRadius(15)
                                    .shadow(radius: 5)
                                    .scaleEffect(CGSize(width: scale, height: scale))
                            }
                            
                            .frame(width: 125, height: 200)
                        }
                    }
                    .padding(32)
                }
            }
        }
    }
}

struct ScrollViewHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewHorizontal()
    }
}
