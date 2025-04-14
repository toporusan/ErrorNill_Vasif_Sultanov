//
//  CollectionSection.swift
//  lesson9_m2_p10
//
//  Created by Toporusan on 02.04.2025.
//

import Foundation

struct CollectionSection: Identifiable {
    var id: String = UUID().uuidString
    let items: [CollectionItem]

//    static func mockData() -> [CollectionSection] {
//
//        let subscribes = [
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text"),
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text"),
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text"),
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text"),
//        ]
//
//        let subscribers = [
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
//            CollectionItem(image: "Rectangle2",header: "Group 1",subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
//        ]
//
//        let fristSection = CollectionSection(items: subscribes)
//        let secondSection = CollectionSection(items: subscribers)
//
//        return [fristSection, secondSection]
//    }

    static func mockData() -> [CollectionItem] {
        [
            CollectionItem(image: "", header: "Group 1", subtext: "some text"),
            CollectionItem(image: "", header: "Group 1", subtext: "some text"),
            CollectionItem(image: "", header: "Group 1", subtext: "some text"),
            CollectionItem(image: "", header: "Group 1", subtext: "some text"),
        ]
    }
    
    static func mockData2() -> [CollectionItem] {
        [
            CollectionItem(image: "", header: "Group 1", subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
            CollectionItem(image: "", header: "Group 1", subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
            CollectionItem(image: "", header: "Group 1", subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
            CollectionItem(image: "", header: "Group 1", subtext: "some text", text: "Lorem inspum sdfsdfsdfdsjfldksjfkdslfjdskfjsdlf sadfsdfsdfdsfsd sdfsdfsdf"),
        ]
    }
    
}
