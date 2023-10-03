//
//  ContentView.swift
//  InstagramTutorial
//
//  Created by Christian Manzaraz on 30/09/2023.
//

import SwiftUI

struct ContentView: View {
    private var viewModel = ViewModel()
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "tabBar-bg")
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider()
                    .overlay( Color("primary"))
                    .frame(height: 1)
                    .opacity(0.4)
                
                ScrollView {
                    VStack {
                        storyList
                        Divider()
                            .overlay( Color("primary"))
                            .frame(height: 1)
                            .opacity(0.4)
                        
                        ForEach(viewModel.timelineList) { timeline in
                            TimelineView(timeline: timeline)
                        }
                        
                        Color.clear.padding(.bottom, 30) // para crear un espacio así no se me superponga con el tabView al llegar al final del storyList
                    }
                    .toolbar {
                        self.toolbarView()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
    var storyList: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(viewModel.storyList) { story in
                    StoryView(story: story)
                }
            }
            .padding(.leading, 10)
            .padding(.vertical, 10)
        }
    }
    
    
    @ToolbarContentBuilder
    func toolbarView() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button(action: {}) {
                Image("camera-icon")
                    .renderingMode(.template)
                    .foregroundStyle(Color("primary1"))
            }
        }
        
        ToolbarItem(placement: .principal) {
            Button(action: {}) {
                Image("instagram-logo")
                    .renderingMode(.template)
                    .foregroundStyle(Color("primary1"))
            }
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            HStack {
                Button(action: {}) {
                    Image("igtv")
                        .renderingMode(.template)
                        .foregroundStyle(Color("primary1"))
                }
                
                Button(action: {}) {
                    Image("messanger")
                        .renderingMode(.template)
                        .foregroundStyle(Color("primary1"))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
