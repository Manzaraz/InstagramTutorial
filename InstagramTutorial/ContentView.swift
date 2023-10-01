//
//  ContentView.swift
//  InstagramTutorial
//
//  Created by Christian Manzaraz on 30/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Hello, Manzi!")
                }
                .toolbar {
                    self.toolbarView()
                }
            }
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
