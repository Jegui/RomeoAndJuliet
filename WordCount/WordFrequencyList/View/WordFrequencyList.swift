//
//  WordFrequencyList.swift
//  WordCount
//
//  Created by Juan Emilio Eguizabal on 05/06/2023.
//

import SwiftUI

struct WordFrequencyList: View {
    @ObservedObject var listViewModel: WordFrequencyListViewModel = WordFrequencyListViewModel()
    var body: some View {
        List {
            ForEach(listViewModel.frequencyList) { viewModel in                WordFrequencyCell(viewModel: viewModel)
            }
        }
    }
}

struct WordFrequencyList_Previews: PreviewProvider {
    static var previews: some View {
        WordFrequencyList(listViewModel: WordFrequencyListViewModel())
    }
}
