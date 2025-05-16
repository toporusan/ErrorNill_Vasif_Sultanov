//
//  ContentView.swift
//  SwiftUI_lesson6_m3_p10
//
//  Created by Toporusan on 10.05.2025.
//

import SwiftUI

struct ContentView: View {
    @Binding var path: [Page]
    
    var body: some View {
        VStack {
            ImageUIKit(uiImage: UIImage(named: "Avatar")!)
                .frame(width: 80, height: 80)
                .cornerRadius(40)

            Text("Имя Фамилия")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.black)

            VStack(alignment: .leading) {
                Text("О себе")
                    .font(.system(size: 14, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .padding(.leading, 12)
                VStack {
                    Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo")
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .padding(.horizontal, 13)
                }.frame(maxWidth: UIScreen.main.bounds.width - 10, maxHeight: 100)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(14)
            }.padding(.top, 39)
            
            VStack(alignment: .leading) {
                Text("Фото")
                    .font(.system(size: 14, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .padding(.leading, 12)
                HStack(spacing: 20){
                    Image(.rectangle2)
                        .frame(width: 180, height: 180)
                    Image(.rectangle3)
                        .frame(width: 180, height: 180)
                }.padding(.top, 12)
                
            }.padding(.top, 52)
               
            Spacer()
            ButtonUIKit(title: "Редактировать") {
                path.append(.tableViewExport)
            }.frame(width: 390, height: 59)
                .background(Color.blue)
                .cornerRadius(20)

        }.frame(maxWidth: UIScreen.main.bounds.width, maxHeight: .infinity, alignment: .top)
            //.background(Color.blue.opacity(0.1))
    }
}

#Preview {
    ContentView(path: .constant([]))
}
