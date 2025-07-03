//
//  CoinFetch.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 24/06/25.
//

import Foundation

class CoinFetch {
    func fetchTopCoins(page: Int, per_page: Int, complition: @escaping ([Coin]) -> Void) {
        // let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=false"
        // let urlString = "https://api.coingecko.com/api/v3/coins/markets"
        var coins: [Coin] = []

        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.coingecko.com"
        components.path = "/api/v3/coins/markets"
        components.queryItems = [
            URLQueryItem(name: "vs_currency", value: "usd"),
            URLQueryItem(name: "order", value: "market_cap_desc"),
            URLQueryItem(name: "per_page", value: "10"),
            URLQueryItem(name: "page", value: "1"),
            URLQueryItem(name: "sparkline", value: "false"),
        ]

        guard let url = components.url else { // Перевожу безопасно собранный компонент в URL
            print("Невалидный URL")
            return
        }

//        guard let url = URL(string: urlString) else { // Можно использовать уже готовый URL так даже легче
//            print("Невалидный URL")
//           return
//        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("CG-B35R1WfLYovK84QuJJLQy2uG", forHTTPHeaderField: "x-cg-demo-api-key")
        request.setValue("btc", forHTTPHeaderField: "vs_currency")

        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print("Ошибка запроса: \(error)")
            }

            guard let data = data else {
                print("Нет данных")
                return
            }

            do {
                coins = try JSONDecoder().decode([Coin].self, from: data)
                complition(coins)
            } catch {
                print("Ошибка декодирования: \(error)")
            }

        }.resume()
    }
}
