//
//  CoinMoneyMainViewModel.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 30/06/25.
//

import Foundation
import UIKit.UIImage

class CoinMoneyMainViewModel: ObservableObject {
    @Published var items: [CoinCell] = []
    @Published var page = 1
    @Published var per_page = 10
    @Published var isLoading = false
    
    var coinFetch = CoinFetch()
    var coinImage = CoinImageLoader()

    // MARK: fetchItems()

    func fetchItems() {
        
        coinFetch.fetchTopCoins(page: page, per_page: per_page) { coins in
            for coin in coins {
                guard let imageURL = coin.image else {
                    DispatchQueue.main.async {
                        self.items.append(CoinCell(coin: coin, image: nil))
                    }
                    continue
                }

                self.coinImage.loadImage(imageURL: imageURL) { image in
                    DispatchQueue.main.async {
                        let cell = CoinCell(coin: coin, image: image)
                        self.items.append(cell)
                    }
                }
            }
        }
        
        
    }
}
