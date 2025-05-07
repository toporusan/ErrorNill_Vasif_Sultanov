//
//  EnterButton.swift
//  SwiftUI_lesson4_m3_p10
//
//  Created by Toporusan on 28.04.2025.
//

import SwiftUI

struct EnterButton: View {
    var text: String = "Enter"
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity) // убираем maxHeight: .infinity
                .frame(height: 53)          // фиксированная высота
        }
        .frame(width: UIScreen.main.bounds.width - 50)
        .background(Color.darkBlueProj)
        .cornerRadius(26.5)
        .contentShape(RoundedRectangle(cornerRadius: 26.5))
    }
}

#Preview {
    EnterButton()
}
