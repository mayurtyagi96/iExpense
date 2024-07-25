//
//  ContentView.swift
//  iExpense
//
//  Created by Mayur  on 24/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(numbers, id: \.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform: removeIndex)
                }
                Button("Add number"){
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar{
                EditButton()
            }
        }
    }
    func removeIndex(index indexOffSet: IndexSet){
        numbers.remove(atOffsets: indexOffSet)
        
    }
}


#Preview {
    ContentView()
}
