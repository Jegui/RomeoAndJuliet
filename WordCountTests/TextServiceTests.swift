//
//  TextServiceTests.swift
//  WordCountTests
//
//  Created by Juan Emilio Eguizabal on 05/06/2023.
//

import XCTest
@testable import WordCount

final class TextServiceTests: XCTestCase {
    var sut: TextService!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = TextService()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testRetrieveFileString() throws {
        do {
            let stringFromFile = try sut.getTextFileString()
            print(stringFromFile)
            XCTAssert(!stringFromFile.isEmpty, "File string is empty")
        }
        catch {
            XCTFail(error.localizedDescription)
            throw error
        }
    }
}
