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

    // MARK: Итемы

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

    // MARK: Картинки

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
