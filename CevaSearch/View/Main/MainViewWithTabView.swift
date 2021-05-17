//
//  MainViewWithTabView.swift
//  CevaSearch
//
//  Created by Alex Freitas on 12/05/21.
//

import SwiftUI

struct MainViewWithTabView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Ceva", systemImage: "book.fill")
                }
            FavsView()
                .tabItem {
                    Label("Favs", systemImage: "heart.fill")
                }
        }
    }
}

struct MainViewWithTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewWithTabView()
    }
}
