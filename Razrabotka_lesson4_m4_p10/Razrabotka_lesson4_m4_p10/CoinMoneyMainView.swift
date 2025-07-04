//
//  ContentView.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 24/06/25.
//

import SwiftUI

struct CoinMoneyMainView: View {
    let coinFetch = CoinFetch()
    @ObservedObject var viewModel: CoinMoneyMainViewModel

    var body: some View {
        VStack {
            TopBar()
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(viewModel.items, id: \.coin.id) { coin in

                        CoinCellView(coinCell: coin)
                            .onAppear {
                                if coin.coin.id == viewModel.items.last?.coin.id{
                                    
                                }
                            }
                    }
                }
            }
            .onAppear {
            }

            Button {
                viewModel.items = []
                viewModel.fetchItems()

            } label: {
                Text("Fetch coin")
            }
        }
    }
}

#Preview {
    CoinMoneyMainView(viewModel: CoinMoneyMainViewModel())
}
