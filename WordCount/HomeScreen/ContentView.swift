//
//  ContentView.swift
//  WordCount
//
//  Created by Juan Emilio Eguizabal on 05/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .padding()
                Text("Welcome to \nRomeo and Juliet word count")
                    .multilineTextAlignment(.center)
                NavigationLink(destination: WordFrequencyList()) {
                    Text("Tap Here")
                        .foregroundColor(.orange)
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
