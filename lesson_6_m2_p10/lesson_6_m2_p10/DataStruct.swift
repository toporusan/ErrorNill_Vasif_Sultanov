//
//  DataStruct.swift
//  lesson_6_m2_p10
//
//  Created by Toporusan on 23.03.2025.
//

import Foundation


struct DataStruct {
    let name: String
    let image: String
    let header: String
    let subsHeader: String
    let mainText: String
    let buttonText: String
    
    static func dataArray()-> [DataStruct] {
        return [
            DataStruct(name:"Имя Фамилия", image:"im1", header:"Заголовок", subsHeader:"20 ноября 2024", mainText:"Lorem ipsum dolor sit amet, consectetur //adipisicing elit, sed do eiusmod tempor incididunt ut labore ", buttonText:"next"),
            DataStruct(name:"Имя Фамилия2", image:"im2", header:"Заголовок2", subsHeader:"19 ноября 2024", mainText:"Lorem ipsum dolor sit amet, consectetur //adipisicing elit, sed do eiusmod tempor incididunt ut labore  ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor //incididunt ut labore  ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore", buttonText:"next"),
            
        ]
        
        
    }
}
