//
//  SwiftUI_lesson4_m3_p10App.swift
//  SwiftUI_lesson4_m3_p10
//
//  Created by Toporusan on 28.04.2025.
//

import SwiftUI

@main
struct SwiftUI_lesson4_m3_p10App: App {
    @StateObject var session = AppViewModel()
    @State var path: [Page] = []

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                Group {
                    if session.isLogin {
                        AuthView(path: $path)
                            .environmentObject(session)
                    } else {
                        OnboardingView(path: $path)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                    session.login()
                                }
                            }
                    }
                }
                .navigationDestination(for: Page.self) { page in
                    switch page {
                    case .auth:
                        AuthView(path: $path)
                    case .main:
                        MainPageView(path: $path).environmentObject(session).navigationBarBackButtonHidden(true)
                    case .onboarding:
                        OnboardingView(path: $path)
                    }
                
                }
            }
        }
    }
}

enum Page: Hashable {
    case onboarding
    case auth
    case main
}
