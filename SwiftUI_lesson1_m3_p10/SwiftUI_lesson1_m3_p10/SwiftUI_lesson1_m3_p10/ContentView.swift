//
//  ContentView.swift
//  SwiftUI_lesson1_m3_p10
//
//  Created by Toporusan on 16.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(.rectangle1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 370, height: 249)
                    .padding(.top, 50)

                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod")
                    .foregroundColor(.white)
                    .padding(.bottom, 16)
                    .font(.system(size: 16))
            }
            .frame(width: 370, height: 249)
            .padding(.bottom, 50) // ✅ добавили внешний отступ

            HStack(spacing: 10) {
                Image(.rectangle3)
                Image(.rectangle4)
                Image(.rectangle5)
            }.padding(.bottom, 30)
            
            
            HStack(spacing: 27) {
                
                HStack(spacing: 10) {
                    Image(.image1)
                    Text("User Name")
                        .font(.system(size: 20, weight: .bold))
                    
                }
                HStack(spacing: 10) {
                    Image(.image2)
                    Text("25")
                        .font(.system(size: 20, weight: .bold))
                    
                }
                
                
                
            }
            .padding(.trailing, 120)
            .padding(.bottom, 30)
            
            
            VStack(alignment: .leading, spacing: 10) {
                Text("About")
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit.")
                    .font(.system(size: 16))
            }
            
            .padding(.bottom, 100)
            
            
            VStack(alignment: .leading, spacing: 10) {
                Button {
                    print("Button tapped")
                } label: {
                    Text("Настроить профиль")
                }
                .frame(width: 276, height: 72)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(36)

                
                
            }
            
            
            
            
            

            Spacer()
        }
        
    }
}


#Preview {
    ContentView()
}

