//
//  File.swift
//  SwiftUI_lesson6_m3_p10
//
//  Created by Toporusan on 12.05.2025.
//

import SwiftUI

struct ImageUIKit: UIViewRepresentable {
    let uiImage: UIImage

    func makeUIView(context: Context) -> UIView {
        let container = UIView()

        let imageView = {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.contentMode = .scaleAspectFit
            $0.clipsToBounds = true

            return $0
        }(UIImageView(image: uiImage))

        container.addSubview(imageView)

        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: container.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: container.bottomAnchor)])

        return container
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
