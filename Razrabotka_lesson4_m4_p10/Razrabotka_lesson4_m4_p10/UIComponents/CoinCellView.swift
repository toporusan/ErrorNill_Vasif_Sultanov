//
//  CoinCellView.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 26/06/25.
//

import SwiftUI

struct CoinCellView: View {
    
    let coinCell: CoinCell
    

    var body: some View {
        VStack(alignment: .leading){
            HStack{
                HStack(spacing: 0) {
                    Image(uiImage: coinCell.image ?? UIImage(named: "bitcoin")!)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.horizontal, 16)
                    
                    VStack(alignment: .leading){
                        Text(coinCell.coin.name ?? "YYY")
                            .font(.system(size: 18))
                            .lineLimit(1)
                        Text(coinCell.coin.symbol ?? "YYY")
                            .foregroundStyle(Color.symbol)
                            .font(.system(size: 16))
                            .lineLimit(1)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing){
                        Text("$\(coinCell.coin.current_price ?? 0.0)")
                            .font(.system(size: 18))
                            .lineLimit(1)
                        Text("\(coinCell.coin.atl_change_percentage ?? 0.0)%")
                            .foregroundStyle(Color.currentPrice)
                            .font(.system(size: 16))
                            .lineLimit(1)
                    }.padding(.horizontal, 16)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            
            
        }
        .frame(width: 343, height: 68)
        .background(Color.lightGrayR)
            .cornerRadius(20)
            .shadow(color: Color.cellShadow, radius: 5, x: 0, y: 6)
    }
}


#Preview {
    let coinView = Coin(id: "bitcoin", name: "Bitcoin", symbol: "BTC", current_price: 1.0090, image: "", atl_change_percentage: 5.4)
    let image = UIImage(resource: .bitcoin)
    let coinCell = CoinCell(coin: coinView, image: image)
    
    CoinCellView(coinCell: coinCell)
}


//Coin(name: Optional("XRP"), symbol: Optional("xrp"), current_price: Optional(2.17), image: Optional("https://coin-images.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1696501442"), atl_change_percentage: Optional(80882.58487))
