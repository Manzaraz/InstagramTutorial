//
//  ContentView.swift
//  InstagramTutorial
//
//  Created by Christian Manzaraz on 30/09/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = ViewModel()
    
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
            .padding(.leading, 20)
            .padding(.vertical, 8)
        }
    }
    
    
    @ToolbarContentBuilder
    func toolbarView() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button(action: {}) {
                Image("camera-icon")
            }
        }
        
        ToolbarItem(placement: .principal) {
            Button(action: {}) {
                Image("instagram-logo")
            }
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            HStack {
                Button(action: {}) {
                    Image("igtv")
                }
                
                Button(action: {}) {
                    Image("messanger")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
