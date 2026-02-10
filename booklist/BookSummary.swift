//
//  BookSummary.swift
//  booklist
//
//  Created by honamiNAKASUJI on 2026/02/08.
//

import SwiftData

@Model
final class BookSummary {
    @Attribute(.unique) var id : String
    var title: String
    var thumbnail: String?
    
    init(id: String, title: String, thumbnail: String? = nil){
        self.id = id
        self.title = title
        self.thumbnail = thumbnail
    }
}
