//
//  UserStruct.swift
//  lesson5_m2_p10
//
//  Created by Toporusan on 21.03.2025.
//

import Foundation

public struct UserStruct{
    var imgColor: String
    var title: String
    
    static func mockUser() -> [UserStruct] {
        [
            UserStruct(imgColor: "#D1D3D8", title: "User 1"),
            UserStruct(imgColor: "#D1D3D8", title: "User 2"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3 animation"),
            UserStruct(imgColor: "#D1D3D8", title: "User 3"),
            UserStruct(imgColor: "#D1D3D8", title: "User 4 animation")
        ]
    }

}
