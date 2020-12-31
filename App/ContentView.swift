//
//  ContentView.swift
//  Fructus
//
//  Created by H Coleman on 22/12/2020.
//

import SwiftUI

struct ContentView: View {
    // PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    
    // BODY
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
        }// NAVIGATION END
        
        
        
    }
}
// PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
