//
//  TableViewEvolutionTests.swift
//  TableViewEvolutionTests
//
//  Created by Arie Peretz on 10/07/2021.
//

import XCTest
@testable import TableViewEvolution

class TableViewEvolutionTests: XCTestCase {

    func testAddNewLineToConversation() {
        let conversation = Conversation(lines: [])
        let newLine = ConversationLine(message: "This is a new line", timeStamp: Date(), author: .me)
        conversation.add(line: newLine)
        XCTAssertEqual(conversation.lines.count, 1)
        XCTAssertEqual(conversation.lines.first?.message, "This is a new line")
    }

    func testAddNewLineToViewModel() {
        let line = ConversationLine(message: "This is a new message", timeStamp: Date(), author: .me)
        let expectedConversation = Conversation(lines: [line])
        
        let conversation = Conversation(lines: [])
        let viewModel = ViewController.ViewModel(conversation: conversation)
        viewModel.add(message: "This is a new message", author: .me)
        XCTAssertEqual(viewModel.conversation.lines.first?.message, expectedConversation.lines.first?.message)
        XCTAssertEqual(viewModel.conversation.lines.first?.author, expectedConversation.lines.first?.author)
    }
    
}
