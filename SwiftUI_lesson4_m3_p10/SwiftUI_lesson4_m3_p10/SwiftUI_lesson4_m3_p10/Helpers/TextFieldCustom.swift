//
//  SwiftUIView.swift
//  SwiftUI_lesson4_m3_p10
//
//  Created by Toporusan on 28.04.2025.
//

import SwiftUI

struct TextFieldCustom: View {
    var placeholder: String = "Search"
    @Binding var text: String

    var body: some View {
        TextField(placeholder, text: $text)
            .font(.system(size: 16, weight: .bold))
            .frame(width: UIScreen.main.bounds.width - 100, height: 53)
            .padding(.horizontal, 30)
            .background(Color.white)
            .cornerRadius(26.5)
            .disableAutocorrection(true)
            .textInputAutocapitalization(.never)
            
    }
}

#Preview {
    TextFieldCustom(placeholder: "asdasdasd", text: .constant(""))
}
