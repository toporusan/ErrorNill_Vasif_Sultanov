//
//  Razrabotka_lesson4_m4_p10App.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 24/06/25.
//

import SwiftUI

@main
struct Razrabotka_lesson4_m4_p10App: App {
 
    var body: some Scene {
        WindowGroup {
            CoinMoneyMainView(viewModel: CoinMoneyMainViewModel())
        }
    }
}
