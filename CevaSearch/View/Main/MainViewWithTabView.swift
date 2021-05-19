//
//  MainViewWithTabView.swift
//  CevaSearch
//
//  Created by Alex Freitas on 12/05/21.
//

import SwiftUI

struct MainViewWithTabView: View {
    var body: some View {
//        ZStack {
//            Color.clear.ignoresSafeArea()
//            Text("xablau")
            TabView() {
                MainView()
                    .tabItem {
                        Label("Ceva", systemImage: "book.fill")
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    }
                FavsView()
                    .tabItem {
                        Label("Favs", systemImage: "heart.fill")
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)))
                    }
            }//.mask(RoundedRectangle(cornerRadius: 24).offset(x: 0, y: 715))
//        }//.mask(Rectangle().background(Color.blue))
        //.mask(Capsule().offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 300))
    }
}

struct MainViewWithTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewWithTabView()
    }
}
