//
//  MainView.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 02.05.2025.
//

import SwiftUI

struct MainView: View {
    @Binding var path: [Page]
    @EnvironmentObject var session: AppViewModel
    @Binding var transferData: DataStruct

    var body: some View {
        VStack(spacing: 16) {
            // Заголовок
            HStack {
                Text("instaPocket")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
                Button {
                    print("Settings tapped")
                    path.append(.option)
                } label: {
                    Image(systemName: "gearshape")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)

            // Дополнительный контент
            HStack {
                Text("Сегодня")
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)

                Spacer()
            }

            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(session.getDate(), id: \.self) { index in
                        ModuleView(data: index).onTapGesture {
                            transferData = index
                            path.append(.content)
                        }
                    }
                }
            }
        }
        .background(Color.black)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading) // важно
    }
}

#Preview {
    let transferData2 = DataStruct(
        image: "",
        date: "",
        year: "",
        dateYear: "",
        photoComments: [""],
        button: [Category(name: "d")],
        mainText: "Пример текста",
        secondText: "",
        thirdText: ""
    )
    MainView(path: .constant([]), transferData: .constant(transferData2)).environmentObject(AppViewModel())
}
