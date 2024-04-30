//
//  CollectionSection.swift
//  CompositionLayoutApp
//
//  Created by Matvei Khlestov on 30.04.2024.
//

import Foundation

struct CollectionSection: Identifiable {
    let id: String = UUID().uuidString
    let header: String
    let items: [CollectionItem]
    
    static func mockData() -> [CollectionSection] {
        let storiesItems = [
            CollectionItem(image: "Story1", name: "Name1"),
            CollectionItem(image: "Story2", name: "Name2"),
            CollectionItem(image: "Story3", name: "Name3"),
            CollectionItem(image: "Story4", name: "Name4")
        ]
        
        let massageItems = [
            CollectionItem(image: "Massage1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Massage2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Massage3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Massage4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit")
        ]
        
        let bannerItems = [
            CollectionItem(image: "Banner1", header: "Заголовок1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Banner2", header: "Заголовок2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Banner3", header: "Заголовок3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "Banner4", header: "Заголовок4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit")
        ]
        
        let imageItems = [
            CollectionItem(image: "Image1"),
            CollectionItem(image: "Image2"),
            CollectionItem(image: "Image3"),
            CollectionItem(image: "Image4")
        ]
        
        let storiesSection = CollectionSection(header: "Stories", items: storiesItems)
        let massageSection = CollectionSection(header: "Massages", items: massageItems)
        let bannerSection = CollectionSection(header: "News", items: bannerItems)
        let imageSection = CollectionSection(header: "Banner", items: imageItems)
        
        return [storiesSection, massageSection, bannerSection, imageSection]
    }
}

