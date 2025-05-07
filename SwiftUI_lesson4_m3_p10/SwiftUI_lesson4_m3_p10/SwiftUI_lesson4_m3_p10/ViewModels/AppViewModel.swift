//
//  AppViewModel.swift
//  SwiftUI_lesson4_m3_p10
//
//  Created by Toporusan on 28.04.2025.
//

import Foundation

class AppViewModel : ObservableObject {
    
    @Published var isLogin = false
    @Published var email: String = ""
    @Published var password: String = ""
    
    func login() {
        isLogin = true
    }
    
    func logout() {
        isLogin = false
    }
    
}
