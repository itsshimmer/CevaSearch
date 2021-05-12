//
//  BeerInfoCell.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 05/05/21.
//

import SwiftUI

// button action
func didPressLikeButton(_ button: UIButton) {
    
    //check current value
    if (button.imageView?.image == UIImage(named: "like")) {
        //set default
        button.setImage(UIImage(named: "default"), for: .normal)
    } else{
        // set like
        button.setImage(UIImage(named: "like"), for: .normal)
    }
}


struct BeerInfoCell: View {
    
    @State private var isLiked: Bool = false
    
    var beer: Beer
    
    var body: some View {
        
        NavigationLink(destination: BeerView(beer: beer)) {
            ZStack {
                VStack(alignment: .leading) {
                    Image("friendship")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(beer.name)
                        .font(.title)
                    Text(beer.type)
                        .font(.subheadline)
                }
                //Text(isLiked ? "Liked!"  : "Unliked!")
                StarButton(isLiked: $isLiked)
                    .offset(x:-170 ,y:-138 )
            }
        }
    }
}


struct StarButton: View{
    @Binding  var isLiked: Bool
    
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
        isLiked ? 0.7: 1.3
    }
    @State private  var animate = false
    
    
    var body: some View{
        Button(action: {
            self.animate = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() +
                self.animationDuration,execute: {
                  self.animate = false
                  self.isLiked.toggle()
                })
            
            
        },  label: {
            Image(systemName: isLiked ? "star.fill": "star")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .foregroundColor(isLiked ? .yellow : .gray)
            
        })
        .scaleEffect(animate ? animationScale : 1)
        .animation(.easeIn(duration: animationDuration))
    }
    
}


struct BeerInfoCell_Previews: PreviewProvider {
    static var previews: some View {
        BeerInfoCell(beer: beers[0])
    }
}
