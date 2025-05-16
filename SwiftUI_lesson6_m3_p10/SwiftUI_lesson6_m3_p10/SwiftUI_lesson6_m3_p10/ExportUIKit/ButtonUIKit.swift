//
//  ButtonUIKit.swift
//  SwiftUI_lesson6_m3_p10
//
//  Created by Toporusan on 13.05.2025.
//

import SwiftUI

struct ButtonUIKit: UIViewRepresentable {
    let title: String
    let completion: () -> Void

    func makeUIView(context: Context) -> UIButton {
        {
            $0.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
            $0.setTitle(title, for: .normal)
            $0.setTitleColor(.white, for: .normal)
            return $0
        }(UIButton(primaryAction: UIAction(handler: { _ in completion() })))
    }

    func updateUIView(_ uiView: UIButton, context: Context) {
    }
}
