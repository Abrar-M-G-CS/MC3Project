//
//  CommentRowView.swift
//  MC3Project
//
//  Created by Abrar Ghandurah on 20/07/1445 AH.
//

import SwiftUI

struct CommentRowView: View {
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


#Preview {
    CommentRowView(userImage: "Test", userName: "Test", text: "Test")
}




