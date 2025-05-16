//
//  OtionView.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 02.05.2025.
//

import SwiftUI

struct OptionView: View {
    @Binding var path: [Page]
    @EnvironmentObject var session: AppViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Button {
                    path.removeLast()
                } label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 27)
                        .foregroundColor(.white)
                }.padding(.trailing, 20)

                Text("Настройки")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)

            VStack {
                HStack {
                    Text("Изменть пароль")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading, 61)

                    Spacer()
                    Button {
                        path.removeLast()
                    } label: {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 26)
                            .foregroundColor(.white)
                    }.padding(.trailing, 59)
                }
                
                HStack {
                    Text("Удалить все")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading, 61)

                    Spacer()
                    Button {
                        path.removeLast()
                    } label: {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 26)
                            .foregroundColor(.white)
                    }.padding(.trailing, 59)
                }.padding(.top, 56)
                
                HStack {
                    Text("Доступ к локации")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading, 61)

                    Spacer()
                    Button {
                        path.removeLast()
                    } label: {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 27, height: 27)
                            .foregroundColor(.white)
                    }.padding(.trailing, 59)
                }.padding(.top, 56)
                
                
            }
            .padding(.top, 56)

    
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(Color.black)
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OptionView(path: .constant([])).environmentObject(AppViewModel())
}
