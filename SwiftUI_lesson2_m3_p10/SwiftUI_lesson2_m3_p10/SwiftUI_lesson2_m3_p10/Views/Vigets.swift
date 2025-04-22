//
//  Vigets.swift
//  SwiftUI_lesson2_m3_p10
//
//  Created by Toporusan on 22.04.2025.
//

import SwiftUI

struct Vigets: View {
    var image: ImageResource
    var color: Color
    var text: String

    var body: some View {
        ZStack {
           
            VStack {
                Image(image)
                    .resizable()
                    .frame(maxWidth: 42, maxHeight: 42)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.top, 21)
                Spacer()
                Text(text)
                    .font(.headline)
                    .foregroundColor(.white)
                    
                    .padding(.bottom, 14)
            }
        }
        .frame(width: 112, height: 112)
        .background(color)
    }
}
