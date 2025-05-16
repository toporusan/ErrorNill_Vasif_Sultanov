//
//  TextFieldCustom.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 02.05.2025.
//

import SwiftUI

struct TextFieldCustom: View {
    var placeholder: String = "Search"
    @State var inputText: String = ""
    
    var body: some View {
        TextField(placeholder, text: $inputText)
            .font(.system(size: 16, weight: .bold))
            .frame(width: UIScreen.main.bounds.width - 100, height: 53)
            .padding(.horizontal, 30)
            //.background(Color.gray.opacity(0.1))
            .background(Color.white)
            .cornerRadius(26.5)
    }
}

#Preview {
    TextFieldCustom()
}
#Preview {
    TextFieldCustom()
}
