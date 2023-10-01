//
//  ViewModel.swift
//  InstagramTutorial
//
//  Created by Christian Manzaraz on 01/10/2023.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var timelineList = [TimelineModel]()
    @Published var storyList = [StoryModel]()
        
    init() {
        self.timelineList = TimelineModel.getPosts()
        self.storyList = StoryModel.getStories()
    }
    
}
