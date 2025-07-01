//
//  TopBar.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 27/06/25.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        VStack(alignment: .leading ){
            HStack( spacing: 85){
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(Color.symbol)
                
                Image(.coinmoney)
                    .resizable()
                    .frame(width: 153, height: 30)
                    .foregroundStyle(Color.symbol)
                
                Image(systemName: "gearshape")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(Color.symbol)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
       // .background(Color.cellShadow)
        .cornerRadius(10)
           
    }
}

#Preview {
    TopBar()
}
