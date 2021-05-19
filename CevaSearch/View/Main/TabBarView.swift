//
//  TabBarView.swift
//  CevaSearch
//
//  Created by João Brentano on 18/05/21.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selectedTab = "Ceva"
    @Binding var pages: [TabBarPage]
    init(pages: Binding<[TabBarPage]>) {
        UITabBar.appearance().isHidden = true
        //        UITabBar.appearance().backgroundColor = UIColor.blue
        self._pages = pages
    }
    var body: some View {
        ZStack(alignment: .bottom) {
            
            TabView(selection: $selectedTab) {
                
                ForEach(pages) { item in
                    AnyView(_fromValue: item.page)
                        
                        .tabItem{
                            EmptyView()
                        }.tag(item.tag)
                }
            }
            
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        ForEach(pages) { item in
                            Button(action: {
                                self.selectedTab = item.tag
                            }) {
                                VStack {
                                    ZStack {
                                        
                                        Image(item.icon)
                                            //.frame(width: 12, height: 30)
                                            .foregroundColor(self.selectedTab == item.tag ? Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)) : Color(UIColor.systemGray4))
                                            .imageScale(.large)
                                            .padding(7)
                                            //.background(self.selectedTab == item.tag ? Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)) : item.color )
                                            //.mask(Circle())
                                    }
                                    Text(item.tag)
                                        .font(.custom("aa", fixedSize: 13))
                                        .foregroundColor(self.selectedTab == item.tag ? Color.init(#colorLiteral(red: 0.1569128633, green: 0.003460064763, blue: 0.2512872219, alpha: 1)) : Color.init(#colorLiteral(red: 0.2341144085, green: 0.2368862331, blue: 0.262745098, alpha: 1)))
                                        .padding(.top, -10)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.height * 0.08)
                        }
                        .padding(.bottom, 15)
                    }
                    //.padding(5)
                    .background(Color.init(#colorLiteral(red: 0.9492809176, green: 0.9488533139, blue: 0.968627451, alpha: 1)))
                    .cornerRadius(24)
                    //                .padding()
                    //                .border(Color.init(#colorLiteral(red: 0.9492809176, green: 0.9488533139, blue: 0.9673426747, alpha: 1)), width: 5)
                    //                .cornerRadius(17)
                    //                .padding(.bottom, -45)
                }
                .ignoresSafeArea()
                
            }
        }
        
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(pages: .constant([TabBarPage(page: MainView()
                                                    .padding(.bottom, 50), icon: "compass", tag: "brunin god", color: Color(UIColor.systemGray4)),
                                     TabBarPage(page: MainView()
                                                    .padding(.bottom, 50), icon: "BeerIcon", tag: "Ceva", color: Color(UIColor.systemGray4)),
                                     TabBarPage(page: FavsView(), icon: "heart", tag: "Favs", color: Color(UIColor.systemGray4))]))
    }
}

struct TabBarPage: Identifiable {
    var id = UUID()
    var page: Any
    var icon: String
    var tag: String
    var color: Color
}
