//
//  NetworkManager.swift
//  SwiftUI_lesson3_m3_p10
//
//  Created by Toporusan on 23.04.2025.
//

import Foundation

public class NetworkManager {
    
    func fetchData() -> [DataStruct] {
        [
            DataStruct(header: "Заголовок поста 1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
            DataStruct(header: "Заголовок поста 2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
            DataStruct(header: "Заголовок поста 3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam")
        ]
    }
    
}
