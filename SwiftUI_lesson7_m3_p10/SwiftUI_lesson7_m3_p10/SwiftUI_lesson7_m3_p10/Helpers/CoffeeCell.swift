//
//  CoffieCell.swift
//  SwiftUI_lesson7_m3_p10
//
//  Created by Toporusan on 16.05.2025.
//

import SwiftUI

struct CoffeeCell: View {
    var data: Data

    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Image(data.coffeeImg)
                    .resizable()
                    .frame(width: .infinity, height: 166)
            }

            HStack {
                Text(data.coffeeType)
                    .font(.system(size: 14, weight: .bold, design: .default))
                    .padding(.leading, 13)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Image(systemName: "star")
                    .frame(width: 8, height: 8)
                    .frame(alignment: .trailing)
                    .padding(.trailing, 18)

            }.padding(.bottom, 9)

            Rectangle()
                .fill(Color.black.opacity(0.3))
                .frame(height: 0.4)
                .padding(.horizontal, 8)

            HStack {
                VStack {
                    Button {
                        print("Цена \(data.coffeePrice)₽")
                    } label: {
                        Text("от \(data.coffeePrice)₽")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.white)
                    }
                }.roundedButton() // Кастомный моддификатор 

                Text("\(data.coffeeSize) мл")
                    .font(.system(size: 14, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 11)

            }.padding(.bottom, 25)
                .padding(.top, 9)

        }.background(Color.gray.opacity(0.1))
            .cornerRadius(20)
            .frame(width: 180, height: 259)
    }
}

#Preview {
    var data = Data(coffeeImg: "1", coffeeType: "МОККО МОККОМОККО", coffeePrice: "150", coffeeSize: "350")
    CoffeeCell(data: data)
}
