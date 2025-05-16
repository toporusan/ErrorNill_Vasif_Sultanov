//
//  RoundedButtonModifire.swift
//  SwiftUI_lesson7_m3_p10
//
//  Created by Toporusan on 16.05.2025.
//


import SwiftUI



extension View {
    public func roundedButton() -> some View {
        self.modifier(RoundedButtonModifier())
    }
}

struct RoundedButtonModifier: ViewModifier {
   
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 30)
            .background(Color.greenProj)
            .cornerRadius(98)
            .padding(.leading, 13)
    }
}

