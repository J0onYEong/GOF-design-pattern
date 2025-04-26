//
//  Memento.swift
//  DSPs
//
//  Created by choijunios on 4/26/25.
//

import Foundation

typealias Memento = GetStateMemento & JustMementoForm

protocol JustMementoForm { }

protocol GetStateMemento {
    func getOffset() -> CGSize
}

// Concrete Memento
struct PositionMemento: Memento {
    private var state: CGSize
    
    init(state: CGSize) {
        self.state = state
    }
    func getOffset() -> CGSize { state }
}
