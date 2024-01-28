//
//  CommentView.swift
//  MC3Project
//
//  Created by Hasna Ahmad on 16/07/1445 AH.
//

import SwiftUI

struct CommentView: View {
    @State private var newComment: String = ""
    
    @State private var comments: [Comment] = [
        Comment(userName: "User1", userImage: "person", text: "Comment 1"),
        Comment(userName: "User2", userImage: "person", text: "Commbnmjbjbj nmb .bjbbmnbnb,mb,jb,jjb,vhvnjbmnjkbhhbhjbbvjhvgvhjbvbjhjbent 2"),
        Comment(userName: "User3", userImage: "person", text: "Comment 3")
    ]

    var body: some View {
        VStack {
            // TextField for writing comments
            HStack{

                Button(action: {
                    self.addComment()
                }) {
                    Text("إضافة")
                        .foregroundColor(Color("OurPurple"))
               
                }
                
                TextField("اترك تعليقًا", text: $newComment)
                    .multilineTextAlignment(TextAlignment.trailing)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
            }
            
            List(comments.indices, id: \.self) { index in
                CommentRow(
                    userImage: comments[index].userImage,
                    userName: comments[index].userName,
                    text: comments[index].text
                )
                .listRowSeparator(.hidden)
                
            }.listStyle(PlainListStyle())
                



            Spacer() // Add Spacer to push content to the top of the screen
            
        }

        .padding()
    }

    func addComment() {
        // Add the new comment to the list
        comments.append(Comment(userName: "New User", userImage: "newUser", text: newComment))
        // Clear the text field
        newComment = ""
    }
}

struct CommentRow: View {
    var userImage: String
    var userName: String
    var text: String

    var body: some View {
        HStack{
           
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(userName)
                    .foregroundColor(Color("OurPurple"))
                    .font(.headline)
                Text(text)
            }.padding()
            
            
            Image(systemName:userImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding()

            
        }//.frame(width: 340 , height: 90)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)

    }
}

struct Comment: Identifiable {
    var id = UUID()
    var userName: String
    var userImage: String
    var text: String
}

#Preview {
    CommentView()
}
