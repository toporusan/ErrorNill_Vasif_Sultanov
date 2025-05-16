//
//  SwiftUI_lesson6_m3_p10App.swift
//  SwiftUI_lesson6_m3_p10
//
//  Created by Toporusan on 10.05.2025.
//

import SwiftUI

@main
struct SwiftUI_lesson6_m3_p10App: App {
    @State var path: [Page] = []

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                ContentView(path: $path).navigationDestination(for: Page.self) { page in
                    switch page {
                    case .tableViewExport:
                        TableViewExport(path:$path)
                    }
                }
            }
        }
    }
}

enum Page: Hashable {
    case tableViewExport

}
