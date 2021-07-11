//
//  TableViewEvolutionTests.swift
//  TableViewEvolutionTests
//
//  Created by Arie Peretz on 10/07/2021.
//

import XCTest
@testable import TableViewEvolution

class TableViewEvolutionTests: XCTestCase {

    func testAddNewLineToViewModel() {
        let message = "This is a new message"
        let line = ConversationLine(message: message, timeStamp: Date(), author: .me)
        let viewModel = ViewController.ViewModel(lines: [])
        viewModel.add(message: message, author: .me)
        XCTAssertEqual(viewModel.lines.count, 1)
        XCTAssertEqual(viewModel.lines.first?.message, line.message)
        XCTAssertEqual(viewModel.lines.first?.author, line.author)
    }
    
}
