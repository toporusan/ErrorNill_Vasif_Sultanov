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

    static func mockData() -> [CollectionSection] {
        
        let storyItems = [
            CollectionItem(image: "img1", name: "Name1"),
            CollectionItem(image: "img2", name: "Name2"),
            CollectionItem(image: "img3", name: "Name3"),
            CollectionItem(image: "img4", name: "Name4"),
            CollectionItem(image: "img4", name: "Name4"),
            CollectionItem(image: "img4", name: "Name4"),
            CollectionItem(image: "img4", name: "Name4"),
            CollectionItem(image: "img4", name: "Name4"),
            CollectionItem(image: "img4", name: "Name4"),
        ]

        let messageItems = [
            CollectionItem(image: "Rectangle11", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Rectangle12", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Rectangle11", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Rectangle12", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Rectangle11", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]

        let newsItems = [
            CollectionItem(image: "news1", header: "Заголовок", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news2", header: "Заголовок2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news3", header: "Заголовок3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]

        let bannerItems = [
            CollectionItem(image: "Rectangle11"),
            CollectionItem(image: "Rectangle12"),
            CollectionItem(image: "Rectangle11"),
        ]

        let storySection = CollectionSection(items: storyItems)
        let messageSection = CollectionSection(items: messageItems)
        let newsSection = CollectionSection(items: newsItems)
        let bannersSection = CollectionSection(items: bannerItems)

        return [storySection, messageSection, newsSection, bannersSection ]
    }
}


