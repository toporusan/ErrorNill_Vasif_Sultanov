//
//  UserStruct.swift
//  lesson5_m2_p10
//
//  Created by Toporusan on 21.03.2025.
//

import Foundation

public struct GroupStruct{
    var imgColor: String
    var title: String
    var subTitle: String
    
    static func mockGroup() -> [GroupStruct] {
        [
            GroupStruct(imgColor: "#D1D3D8", title: "Group 1", subTitle: "some Text"),
            GroupStruct(imgColor: "#D1D3D8", title: "Group 2", subTitle: "some Text"),
            GroupStruct(imgColor: "#D1D3D8", title: "Group 3", subTitle: "some Text"),
            GroupStruct(imgColor: "#D1D3D8", title: "Group 4", subTitle: "some Text")
        ]
    }
    

}
