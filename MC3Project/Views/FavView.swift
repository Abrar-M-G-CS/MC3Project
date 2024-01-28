//
//  FavView.swift
//  MC3Project
//
//  Created by Hasna Ahmad on 16/07/1445 AH.
//

import SwiftUI


struct FavView: View {
    
    @State private var favoritePlaces = ["نمق كافية | Namq Cafe", "فوم كافيه ", "شارك كافيه"]
    
    var body: some View {
        
        NavigationView {
            List(favoritePlaces, id: \.self) { place in
                FavRow(placeName: place)
            
                
            }.listStyle(PlainListStyle())
                .navigationBarTitle("مفضلاتي", displayMode: .inline )
            
        }
    }
}


struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView()
    }
}

