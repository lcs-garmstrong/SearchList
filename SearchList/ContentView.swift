//
//  ContentView.swift
//  SearchList
//
//  Created by Graeme Armstrong on 2023-04-11.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // List of items to be shown
    @State var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    
    // The search term the user has provided
    @State var searchText = ""
    
    // MARK: Computed properties
    
    var filteredItems: [String] {
        if searchText.isEmpty {
            
            return items
            
        } else {
            
            // create an empty array
            var matchingItems: [String] = []
            
            // iterate over original array
            for item in items {
                if item.lowercased().contains(searchText.lowercased()) {
                    matchingItems.append(item)
                }
            }
            // return the new appened array
            return matchingItems
        }
    }
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                
                Text("Searching on: \(searchText)")
                
                List(filteredItems, id: \.self) {currentItem in
                    Text(currentItem)
                }
                .searchable(text: $searchText)
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
