//
//  TabViewCustom.swift
//  InstagramTutorial
//
//  Created by Christian Manzaraz on 03/10/2023.
//

import SwiftUI

enum TabViewIcons: String, CaseIterable {
    case home
    case magnifier
    case plusIcon = "plus-icon"
    case heart
    case profile
}

struct TabViewCustom: View {
    @State private var selectedTab: TabViewIcons = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var icons: [TabViewIcons] = {
        var icon = TabViewIcons.allCases
        icon.removeLast()
        return icon
    }()
    
    var insets = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first(where: { $0.isKeyWindow })?.safeAreaInsets ?? .zero
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                ContentView()
                    .tag(TabViewIcons.home)
                    .ignoresSafeArea()
                
                Color.red
                    .tag(TabViewIcons.magnifier)
                    .ignoresSafeArea()
                Color.green
                    .tag(TabViewIcons.plusIcon)
                    .ignoresSafeArea()
                Color.blue
                    .tag(TabViewIcons.heart)
                    .ignoresSafeArea()
                Color.yellow
                    .tag(TabViewIcons.profile)
                    .ignoresSafeArea()
            }
            
            tabView
          
        }
    }
    
    var tabView: some View {
        VStack(spacing: 0) {
            Divider()
                .overlay(Color("primary1"))
                .frame(height: 1)
                .opacity(0.4)
            
            HStack {
                ForEach(icons, id:  \.self) { item in
                    Button(action: {
                        selectedTab = item
                    }, label: {
                        let selected = item == selectedTab ? "-selected" : ""
                        Image(item.rawValue + selected)
                            .renderingMode(.template)
                            .foregroundStyle(Color("primary1"))
                    })
                    Spacer()
                }
                
                Button(action: {
                    selectedTab = .profile
                }, label: {
                    Image("chrismanzi.dev")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 23)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(Color("primary1"))
                                .opacity(selectedTab == .profile ? 1 : 0.1)
                                .padding(.all, -4)
                        }
                })
            }
            .padding(.top, 10)
            .padding(.bottom, insets.bottom == 0 ? 10 : 0)
            .padding(.horizontal, 26)
            .background(Color("tabBar-bg"))
        .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

#Preview {
    TabViewCustom()
}
