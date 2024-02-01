
//
//  PlacesModel.swift
//  MC3Project
//
//  Created by Abrar Ghandurah on 17/07/1445 AH.
//

import Foundation


enum Categories {
    case Restruants
    case cafe
}

struct PlacesModel: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let link: String // convert to URL when calling the variabel
    let disability: Bool
    let priceRange: Int
    let music: Bool
    var categori: Categories
    
}

//Creating Mock_Places replace once the data from Cloudkit is ready !

extension Categories{
    static var Mock_Places: [PlacesModel] = [
        .init(name: "Namq", description: "Namq Description", link: "https://maps.app.goo.gl/otqpo9ZmtbWN21xe8", disability: true, priceRange: 100, music: false, categori: Categories.cafe)
    

    ]
}//extension
