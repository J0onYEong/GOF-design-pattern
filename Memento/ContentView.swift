//
//  ContentView.swift
//  Memento
//
//  Created by choijunios on 4/26/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel: ViewModel = .init()
    
    var body: some View {
        VStack {
            DraggableView(offset: $viewModel.offset)
            
            Button("Save postion") {
                viewModel.savePosition()
            }
            
            Button("Restore postion") {
                viewModel.restorePosition()
            }
        }
    }
}

#Preview {
    ContentView()
}
