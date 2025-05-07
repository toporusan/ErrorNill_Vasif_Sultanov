//
//  OnbordingView.swift
//  SwiftUI_lesson4_m3_p10
//
//  Created by Toporusan on 28.04.2025.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var session: AppViewModel
    @Binding var path: [Page]
    var body: some View {
        VStack {
            Text("Добро")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                // .padding(.top, 100)
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("пожаловать")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .leading)

            Image(.boyImg)
                .resizable()
                .frame(width: 163, height: 163, alignment: .center)
                .padding(.top, 109)
            Text("Social App")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .padding(.top, 19)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.top, 100)
        .background(Color.black)
    }
}

#Preview {
    OnboardingView(path: .constant([]))
            .environmentObject(AppViewModel())
}
