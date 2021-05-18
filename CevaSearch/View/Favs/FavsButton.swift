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
    // init personalizado

    var body: some View {
        Button(action: {
            print(beer.isFavourite)
            isFav = beer.isFavourite
            beer.isFavourite = !beer.isFavourite
            self.isFav.toggle()
            print(isFav)
            print(UserDefaults.standard.object(forKey: "Favourites") as? [Int] ?? [])
        }, label: {
            Image(systemName: isFav ? "heart.fill" : "heart")
                .padding(12.0)
                .background(Color.init(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .clipShape(Circle())
                .font(.title2)
                .foregroundColor(isFav ? Color.init(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)) : .black)
        })
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
