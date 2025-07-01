//
//  CoinMoneyMainViewModel.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 30/06/25.
//

import Foundation
import UIKit

class CoinMoneyMainViewModel: ObservableObject {
    @Published var items: [Coin] = []
    @Published var images: [UIImage] = []
    
    var coinFetch = CoinFetch()
    var coinImageLoader = CoinImageLoader()

    func fetchItems() {
        coinFetch.fetchTopCoins { i in

            DispatchQueue.main.async {
                self.items = i

                for r in self.items {
                    print("\(String(describing: r.image))")
                }
            }
        }
    }

    func fetchImage() {
        for image in items {
            guard let imageURL = image.image else {
                return
            }

            coinImageLoader.loadImage(urlString: imageURL) { image in
                guard let img = image else {
                    return
                }

                self.images.append(img)
            }
        }
    }
}

//    func fetchItems() {
//        items = [
//            Coin(name: "Bitcoin", symbol: "BTC1", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC2", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC3", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC4", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC6", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
//            Coin(name: "Bitcoin", symbol: "BTC6", current_price: 1.0090, image: "", atl_change_percentage: 5.4)
//        ]
//    }
