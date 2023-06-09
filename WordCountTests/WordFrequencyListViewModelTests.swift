//
//  WordFrequencyListViewModelTests.swift
//  WordFrequencyListViewModelTests
//
//  Created by Juan Emilio Eguizabal on 05/06/2023.
//

import XCTest
@testable import WordCount

final class WordFrequencyListViewModelTests: XCTestCase {
    
    var sut: WordFrequencyListViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = WordFrequencyListViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testOrderedByFrequency() throws {
        let frequencyList = sut.frequencyList
        var ordered: Bool = true
        for i in (2 ..< frequencyList.count) {
            ordered = (frequencyList[i].frequency >= frequencyList[i - 1].frequency)
        }
        XCTAssert(ordered)
    }
}
