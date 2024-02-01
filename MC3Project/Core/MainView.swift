//
//  ContentView.swift
//  MC3Project
//
//  Created by Abrar Ghandurah on 13/07/1445 AH.
//

import SwiftUI

struct MainView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex){
                
                Text("User ProfileView")
                    .tabItem{
                        Label("حسابي", systemImage: "person.crop.circle.fill")
                    }.tag(0)
                
                
                FavView()
                    .tabItem{
                        Label("مفضلاتي", systemImage: "heart.fill")
                    }.tag(1)
                
                
                Text("Home View")
                    .tabItem{
                        Label("الرئيسية", systemImage: "house.fill")
                    }.tag(2)
                
                
                
                
                
            }//TabView
        }//VStack
    }//Body
}//MainVIew

#Preview {
    MainView()
}
