//
//  ViewModel.swift
//  TableViewEvolution
//
//  Created by Arie Peretz on 10/07/2021.
//

import Foundation
extension ViewController {
    final class ViewModel {
        private(set) var conversation: Conversation
        
        init(conversation: Conversation) {
            self.conversation = conversation
        }
        
        func add(message: String, author: Author) {
            let newLine = ConversationLine(message: message, timeStamp: Date(), author: author)
            conversation.add(line: newLine)
        }
    }
}
