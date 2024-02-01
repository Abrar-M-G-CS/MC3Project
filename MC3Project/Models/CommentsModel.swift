//
//  CommentsModel.swift
//  MC3Project
//
//  Created by Abrar Ghandurah on 19/07/1445 AH.
//

import Foundation


struct Comment: Identifiable {
    var id = UUID()
    var userName: String
    var userImage: String
    var text: String
}
