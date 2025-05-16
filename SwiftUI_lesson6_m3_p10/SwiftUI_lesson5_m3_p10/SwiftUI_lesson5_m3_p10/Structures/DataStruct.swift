//
//  DateStruct.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 06.05.2025.
//

import Foundation

struct DataStruct: Identifiable, Hashable {

    let id = UUID()
    let image: String
    let date: String
    let year: String
    let dateYear: String
    let photoComments: [String]
    let button: [Category]
    let mainText: String
    let secondText: String
    let thirdText: String
}
