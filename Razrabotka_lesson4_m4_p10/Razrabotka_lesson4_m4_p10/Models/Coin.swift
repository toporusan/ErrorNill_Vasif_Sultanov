//
//  Coin.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 24/06/25.
//

import Foundation

struct Coin: Identifiable, Codable {
    //var id: String = UUID().uuidString
    
    var id: String?
    let name: String?
    let symbol: String?
    let current_price: Double?
    let image: String?
    let atl_change_percentage: Double?
}
