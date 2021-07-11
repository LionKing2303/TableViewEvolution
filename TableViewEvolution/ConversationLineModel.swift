//
//  ConversationLineModel.swift
//  TableViewEvolution
//
//  Created by Arie Peretz on 10/07/2021.
//

import Foundation

enum Author {
    case me
    case other
}

struct ConversationLine: Hashable {
    let id: UUID
    let message: String
    let timeStamp: Date
    let author: Author
    
    internal init(id: UUID = UUID(), message: String, timeStamp: Date, author: Author) {
        self.id = id
        self.message = message
        self.timeStamp = timeStamp
        self.author = author
    }
}
