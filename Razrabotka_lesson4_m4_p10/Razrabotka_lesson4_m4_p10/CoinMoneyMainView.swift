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
            ScrollView{
                
                LazyVStack(spacing: 20){
                    ForEach(viewModel.items, id: \.id) { d in
                        CoinCellView(coin: d)
                    }
                }
                
                ForEach(viewModel.images, id: \.size){ image in
                    
                }
                
                    }//.padding(.top, 10)
            
            Button {
                viewModel.fetchItems()
                viewModel.fetchImage()
                
                
            } label: {
                Text("Fetch coin")
            }

        }
        .onAppear(){
            //viewModel.fetchItems()
        }
        //.padding(.top,10)
        
    }

}

#Preview {
    CoinMoneyMainView(viewModel: CoinMoneyMainViewModel())
}
