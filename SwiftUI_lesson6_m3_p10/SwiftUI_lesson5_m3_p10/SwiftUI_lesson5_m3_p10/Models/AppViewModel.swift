//
//  AppModelView.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 02.05.2025.
//

import Foundation

class AppViewModel: ObservableObject {
    @Published var text: [DataStruct] = IncomingDate.getDate()
    
    func getDate() -> [DataStruct] {
        return text
    }
    
    
}
