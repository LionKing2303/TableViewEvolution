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
    let id = UUID()
    let message: String
    let timeStamp: Date
    let author: Author
}

final class Conversation {
    private(set) var lines: [ConversationLine] = []
    
    init(lines: [ConversationLine]) {
        self.lines = lines
    }
    
    func add(line: ConversationLine) {
        lines.append(line)
    }
}
