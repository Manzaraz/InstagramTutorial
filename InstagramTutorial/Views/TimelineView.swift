//
//  TimelineView.swift
//  InstagramTutorial
//
//  Created by Christian Manzaraz on 01/10/2023.
//

import SwiftUI

struct TimelineView: View {
    let timeline: TimelineModel
    
    var body: some View {
        VStack {
            headerView
            postImage
            actionIcons
            likedSection
            commentSection
        }
        
    }
    
    var commentSection: some View {
        HStack {
            Text(timeline.user.username).bold()
            + Text(" \(CommentModel.getComments().randomElement()!.comment)")
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    var likedSection: some View {
        HStack {
            Image(UserModel.getUsers().randomElement()!.profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 17, height: 17)
                .clipShape(Circle())
            Text("Liked by ")
            + Text(UserModel.getUsers().randomElement()!.username).bold()
            + Text(" and ")
            + Text("40,000").bold()
            + Text(" others").bold()
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    var actionIcons: some View {
        HStack (spacing: 17) {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("like")
                    .renderingMode(.template)
                    .foregroundStyle(Color("primary1"))
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("comment")
                    .renderingMode(.template)
                    .foregroundStyle(Color("primary1"))
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("messanger")
                    .renderingMode(.template)
                    .foregroundStyle(Color("primary1"))
            }
            
            Spacer()
             
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("save")
                    .renderingMode(.template)
                    .foregroundStyle(Color("primary1"))
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    var postImage: some View {
        Image(timeline.photo)
            .resizable()
            .frame(height: UIScreen.main.bounds.width)
            .frame(maxWidth: .infinity)
        .aspectRatio(contentMode: .fill)}
    
    var headerView: some View {
        HStack {
            Image(timeline.user.profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 32, height: 32)
                .clipShape(Circle())
            VStack (alignment: .leading, spacing: 2) {
                HStack {
                    Text(timeline.user.username)
                        .font(.system(size: 13, weight: .bold))
                    if timeline.user.isVerified {
                        Image("official-icon")
                            .resizable()
                            .frame(width: 10, height: 10)
                    }
                }
                Text(timeline.user.city)
                    .font(.system(size: 11))
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("more-icon")
                    .renderingMode(.template)
                    .foregroundStyle(Color("primary1"))
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
}

#Preview {
    TimelineView(timeline: TimelineModel.getPosts()[2])
    
}
