//
//  Data.swift
//  SwiftUI_lesson7_m3_p10
//
//  Created by Toporusan on 16.05.2025.
//

import Foundation

struct Data: Identifiable, Hashable {
    var id = UUID().uuidString
    
    let coffeeImg: String
    let coffeeType: String
    let coffeePrice: String
    let coffeeSize: String
}
