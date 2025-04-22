//
//  ImageCustom.swift
//  SwiftUI_lesson2_m3_p10
//
//  Created by Toporusan on 22.04.2025.
//

import SwiftUI

struct ImageCustom: View {
    var image: ImageResource
    var width: CGFloat? = nil
    var height: CGFloat? = nil

    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
    }
}

