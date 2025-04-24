//
//  ContentViewModel.swift
//  SwiftUI_lesson3_m3_p10
//
//  Created by Toporusan on 23.04.2025.
//

import Foundation


class ContentViewModel: ObservableObject {
    @Published var data: [DataStruct] = []
    var network = NetworkManager()
    
    
    func fetchData() {
        data = network.fetchData()
    }
    
    func clearData() {
        data = []
    }
}
