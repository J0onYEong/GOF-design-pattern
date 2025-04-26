//
//  ViewModel.swift
//  DSPs
//
//  Created by choijunios on 4/26/25.
//

import SwiftUI

class ViewModel: ObservableObject, Originator {
    // View state
    @Published var offset: CGSize = .zero
    
    private var rollbackables: [Command] = []
    
    init() { }
    
    func savePosition() {
        let command = SaveCommand(originator: self)
        command.execute()
        rollbackables.append(command)
    }
    
    func restorePosition() {
        if let recentCommand = rollbackables.last {
            recentCommand.rollback()
            rollbackables.removeLast()
        }
    }
}


// MARK: Originator
extension ViewModel {
    func getMemento() -> JustMementoForm {
        PositionMemento(state: offset)
    }
    
    func setMemento(_ memento: JustMementoForm) {
        guard let completeMemento =  memento as? Memento else { return }
        self.offset = completeMemento.getOffset()
    }
}
