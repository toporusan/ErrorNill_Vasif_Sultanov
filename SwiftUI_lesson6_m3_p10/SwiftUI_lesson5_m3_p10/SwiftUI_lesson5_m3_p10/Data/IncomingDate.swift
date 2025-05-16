//
//  DataStructure.swift
//  SwiftUI_lesson5_m3_p10
//
//  Created by Toporusan on 05.05.2025.
//

import Foundation

struct IncomingDate: Identifiable, Hashable {
    
    var id = UUID()
    
    static func getDate() -> [DataStruct] {
        
        [
            DataStruct(
                image: "Rectangle61", 
                date: "16 декабря",
                year: "2023 год",
                dateYear: "16.12.2023",
                photoComments: ["6 фотографии","3 комментария"],
                button: [Category(name: "Природа") , Category(name: "Природа"), Category(name: "Природа")],
                mainText: """
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostru exercitation ullamco laboris nisi
                ut aliquip ex ea commodo consequat.
                Duis aute irure dolor in reprehenderit 
                """,
                secondText: """
                Ut enim ad minim veniam, quis nostrud exercit
                ation ullamco laboris nisi 
                """,
                thirdText: """
                Ut enim ad minim veniam, quis nostrud exercit
                ation ullamco laboris nisi 
                """
            ),
            DataStruct(
                image: "Rectangle64",
                date: "17 декабря",
                year: "2023 год",
                dateYear: "17.12.2023",
                photoComments: ["3 фотографии","9 комментария"],
                button: [Category(name: "Природа") , Category(name: "Природа"), Category(name: "Природа")],
                mainText: """
                Lorem ipsum dolor sit amet.
                """,
                secondText: """
                Ut enim ad minim veniam, quis nostrud exercit
                ation ullamco laboris nisi 
                """,
                thirdText: """
                Ut enim ad minim veniam, quis nostrud exercit
                ation ullamco laboris nisi 
                """
            ),
        ]
    }
}
