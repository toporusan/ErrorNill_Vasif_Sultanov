//
//  CoinCell.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 03/07/25.
//

import Foundation
import UIKit.UIImage


struct CoinCell: Identifiable{
    var id: String = UUID().uuidString
    var coin: Coin
    var image: UIImage?

}
