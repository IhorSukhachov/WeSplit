//
//  ContentView.swift
//  WeSplit
//
//  Created by Ihor Sukhachov on 28.10.2025.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Ron", "Hermi", "Max"]
    @State private var tapCount: Int = 0
    @State private var name: String = ""
    @State private var selectedStudent = "Ron"
    var body: some View {
        NavigationStack{
            Form {
                Picker("Select a student", selection: $selectedStudent) {
                    ForEach(students, id:\.self) {
                        Text($0)
                    }
                }
                
            }.navigationTitle("Select a student")
            
        }
    }
}
      /*  NavigationStack {
            
                Form {
                    Section {
                        Text("Hello World")
                        Text("Hello World")
                        Text("Hello World")
                    }
                    Section {
                        Text("Hello World")
                        Text("Hello World")
                        Text("Hello World")
                    }
            
                }.navigationTitle("SwiftUI").navigationBarTitleDisplayMode(.inline)
            
        } */
       // Button("Tap count: \(tapCount)") {
         //   tapCount += 1
        //}.buttonStyle(.glass)
   /*     Form {
            ForEach(1..<10) {number in
                    Text("\(number)")
                
                }
                
            }
        }
       

    }

 */
#Preview {
    ContentView()
}
