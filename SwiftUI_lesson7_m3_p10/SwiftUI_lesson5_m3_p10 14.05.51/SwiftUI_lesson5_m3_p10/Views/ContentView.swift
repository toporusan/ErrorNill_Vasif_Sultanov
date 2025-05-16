//
//  ContentView.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 02.05.2025.
//

import SwiftUI

struct ContentView: View {
    @Binding var path: [Page]
    @Binding var transferData: DataStruct

    var body: some View {
        VStack(spacing: 16) {
            // MARK: Top bar

            HStack {
                Button {
                    path.removeLast()
                } label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 27)
                        .foregroundColor(.white)
                }.padding(.trailing, 45)

                VStack(alignment: .leading) {
                    Text(transferData.date)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                    Text(transferData.year)
                        .font(.system(size: 13, weight: .light))
                        .foregroundColor(.white)
                }

                Button {
                    path.append(.option)
                } label: {
                    Image(systemName: "line.3.horizontal") // ← укажи имя картинки из ассетов
                        .resizable()
                        .scaledToFit()
                        .frame(width: 41, height: 37)
                        .foregroundColor(.white)
                }.padding(.leading, 100)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)

            ScrollView(.vertical, showsIndicators: false) {
                // MARK: Main Images

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        Image(.rectangle64)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 282, height: 518)
                            .clipped()
                            .cornerRadius(30)
                        Image(.rectangle61)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 282, height: 518)
                            .clipped()
                            .cornerRadius(30)
                    }
                    .padding(.top, 30)
                    .padding(.horizontal, 30)
                }

                // MARK: Buttons and text 

                HStack(spacing: 13) {
                    ForEach(transferData.button, id: \.self) { index in
                        Text(index.name)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 6)
                            .background(Color.white.opacity(0.2))
                            .clipShape(Capsule())
                    }
                }.padding(.top, 32)
                    .padding(.horizontal, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)

                VStack{
                    Text(transferData.mainText)
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .padding(.top, 65)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                }
                
        

                VStack {
                    ForEach(0 ..< 2) { _ in

                        VStack(spacing: 8) {
                            Text(transferData.dateYear)
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 20)

                            Text(transferData.secondText)
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 20)
                        }
                        .padding(.top, 65)

                    }.padding(.horizontal, 30)
                }

                TextFieldCustom(placeholder: "Добавить комментарий")
                    .padding(.horizontal, 30)
                    .padding(.top, 40)
            }

        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(Color.black)
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    let transferData2 = DataStruct(
        image: "Rectangle61",
        date: "16 декабря",
        year: "2023 год",
        dateYear: "16.12.2023",
        photoComments: ["6 фотографии", "3 комментария"],
        button: [Category(name: "Природа"), Category(name: "Природа"), Category(name: "Природа")],
        mainText: """
        Lorem ipsum dolor  
        """,
        secondText: """
        Ut enim ad minim veniam, quis nostrud exercit
        ation ullamco laboris nisi 
        """,
        thirdText: """
        Ut enim ad minim veniam, quis nostrud exercit
        ation ullamco laboris nisi 
        """
    )

    return ContentView(
        path: .constant([]),
        transferData: .constant(transferData2)
    )
}
