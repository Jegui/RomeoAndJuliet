//
//  WordFrequencyListViewModel.swift
//  WordCount
//
//  Created by Juan Emilio Eguizabal on 05/06/2023.
//

import Foundation

struct WordFrequencyViewModel: Identifiable {
    let id = UUID()
    let word: String
    let frequency: Int
}

class WordFrequencyListViewModel: ObservableObject {
    
    @Published var frequencyDic: [String : Int] = [:]
    
    @Published var frequencyList: [WordFrequencyViewModel] = []
    
    init(textService: TextService = TextService()) {
        if let text = try? textService.getTextFileString(), let frequencyDictionary = try? getWordFrequency(text) {
            frequencyDic = frequencyDictionary
            frequencyList = getWordFrequencyList(from: frequencyDictionary)
        }
    }
    
    private func getWordFrequencyList(from dictionary: [String : Int]) -> [WordFrequencyViewModel] {
       dictionary.map { (word, count) in
            WordFrequencyViewModel(word: word, frequency: count)
       }.sorted(by: { $0.frequency > $1.frequency })
    }
    
    private func getWordFrequency(_ string: String) throws -> [String : Int] {
        let pattern = "\\w+"
        do {
            let regex = try NSRegularExpression(pattern: pattern)
            let matches = regex.matches(in: string, range: NSRange(string.startIndex..<string.endIndex, in: string))
            
            var wordCount = [String: Int]()
            for match in matches {
                let range = match.range(at: 0)
                if let swiftRange = Range(range, in: string) {
                    let word = string[swiftRange].lowercased()
                    wordCount[word, default: 0] += 1
                }
            }
            return wordCount
        }
        catch {
            throw error
        }
    }
}
