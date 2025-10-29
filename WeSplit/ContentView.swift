//
//  ContentView.swift
//  WeSplit
//
//  Created by Ihor Sukhachov on 28.10.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    var body: some View {
        NavigationStack {
        Form {
            Section {
                TextField("Amount", value: $checkAmmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                Picker("Number of people", selection: $numberOfPeople){
                    ForEach(2..<100) {
                        Text("\($0) people")
                    }
                }
                .pickerStyle(.navigationLink)
            }
            Section {
                Text(checkAmmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }  .navigationTitle("WeSplit")
        }
      
        
    }
}

#Preview {
    ContentView()
}
