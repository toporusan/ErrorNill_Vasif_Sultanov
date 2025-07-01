//
//  ContentView.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 24/06/25.
//

import SwiftUI

struct CoinMoneyMainView: View {
    
    let coinFetch = CoinFetch()
    
    let data: [Coin] = [
        Coin(name: "Bitcoin", symbol: "BTC1", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC2", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC3", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC4", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC6", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC5", current_price: 1.0090, image: "", atl_change_percentage: 5.4),
        Coin(name: "Bitcoin", symbol: "BTC6", current_price: 1.0090, image: "", atl_change_percentage: 5.4)
    ]
    
    var body: some View {
        VStack {
            TopBar()
            ScrollView{
                LazyVStack(spacing: 20){
                    ForEach(data, id: \.id) { d in
                        CoinCellView(coin: d)
                    }
                }
                
            }//.padding(.top, 10)
            
            Button {
                coinFetch.fetchTopCoins(){data in
                    
                    for body in data {
//                        guard let current = body else{
//                            return
//                        }
                        print(body)
                    }
                    
                }
            } label: {
                Text("Fetch coin")
            }

        }
        //.padding(.top,10)
    }
}

#Preview {
    CoinMoneyMainView()
}
