//
//  TextService.swift
//  WordCount
//
//  Created by Juan Emilio Eguizabal on 05/06/2023.
//

import Foundation

class TextService {
    func getTextFileString(_ fileName: String = "Romeo-and-Juliet") throws -> String {
        guard let filePath = Bundle.main.url(forResource: fileName, withExtension: "txt") else {
            throw NSError(domain: "Invalid URL", code: 500)
        }
        do {
            return try String(contentsOf: filePath, encoding: .ascii)
        } catch {
            throw error
        }
    }
}
