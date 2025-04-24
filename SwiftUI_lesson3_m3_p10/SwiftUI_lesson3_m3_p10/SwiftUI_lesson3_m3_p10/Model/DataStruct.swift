//
//  DataStruct.swift
//  SwiftUI_lesson3_m3_p10
//
//  Created by Toporusan on 23.04.2025.
//

import Foundation

struct DataStruct: Identifiable {
    var id: String = UUID().uuidString
    var header: String
    var text: String
}
