//
//  SwiftUI_lesson5_m3_p10App.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 02.05.2025.
//

import SwiftUI

@main
struct SwiftUI_lesson5_m3_p10App: App {
    @State var path: [Page] = []
    @StateObject var data = AppViewModel()
    @State var transferData = DataStruct(image: "", date: "", year: "", dateYear: "", photoComments: [""], button: [Category(name: "d")], mainText: "", secondText: "", thirdText: "")

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                MainView(path: $path, transferData: $transferData)
                    .navigationDestination(for: Page.self) { page in
                        switch page {
                        case .main:
                            MainView(path: $path, transferData: $transferData)
                        case .option:
                            OptionView(path: $path)
                        case .content:
                            ContentView(path: $path, transferData: $transferData)
                        }
                    }
            }.environmentObject(data)
        }
    }
}

enum Page: Hashable {
    case main
    case option
    case content
}
