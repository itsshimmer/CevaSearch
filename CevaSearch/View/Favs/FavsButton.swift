//
//  FavsButton.swift
//  CevaSearch
//
//  Created by Alex Freitas on 16/05/21.
//

import SwiftUI

struct FavsButton: View {
    
    @State var beer: Beer
    @State var isFav: Bool
    
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
        isFav ? 0.7: 1.3
    }
    @State private  var animate = false
    
    // init personalizado
    
    var body: some View {
        ZStack{
            Button(action: {
                print(beer.isFavourite)
                isFav = beer.isFavourite
                beer.isFavourite = !beer.isFavourite
                self.animate = true
                //self.isFav.toggle()
                print(isFav)
                print(UserDefaults.standard.object(forKey: "Favourites") as? [Int] ?? [])
                DispatchQueue.main.asyncAfter(deadline: .now() +
                   self.animationDuration,execute: {
                   self.animate = false
                   self.isFav.toggle()
                })
            }, label: {
                Image(systemName: isFav ? "heart.fill" : "heart")
                    .padding(12.0)
                    .aspectRatio(contentMode: .fit)
                    .font(.title2)
                    .foregroundColor(isFav ? Color.init(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)) : .white)
                
            })
            .scaleEffect(animate ? animationScale : 1)
            .animation(.easeIn(duration: animationDuration))
        }
        .background(Color.init(#colorLiteral(red: 0.1586360335, green: 0.003368647536, blue: 0.2498541772, alpha: 1)))
        .clipShape(Circle())
    }
}

func didPressFavsButton(_ button: UIButton) {
    if (button.imageView?.image == UIImage(named: "heart")) {
    } else {
        button.setImage(UIImage(named: "heart.fill"), for: .normal)
    }
}

//struct FavsButton_Previews: PreviewProvider {
//    static var previews: some View {
//        FavsButton(beer: beers[0], isLiked: $isLiked)
//    }
//}
