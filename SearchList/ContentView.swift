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
    @State var items = ["Item 1", "Item2", "Item3", "Item4", "Item5"]
    
    
    // The search term the user has provided
    @State var searchText = ""
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView{
            
            List(items, id: \.self) {currentItem in
                Text(currentItem)
            }
            .searchable(text: $searchText)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
