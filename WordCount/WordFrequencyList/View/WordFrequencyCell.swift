//
//  WordFrequencyCell.swift
//  WordCount
//
//  Created by Juan Emilio Eguizabal on 05/06/2023.
//

import SwiftUI

struct WordFrequencyCell: View {
    let viewModel: WordFrequencyViewModel
    
    var body: some View {
        HStack {
            Text(viewModel.word)
            Spacer()
            Text("\(viewModel.frequency)")
        }
    }
}

struct WordFrequencyCell_Previews: PreviewProvider {
    static var previews: some View {
        WordFrequencyCell(viewModel: WordFrequencyViewModel(word: "Hello", frequency: 3))
    }
}
