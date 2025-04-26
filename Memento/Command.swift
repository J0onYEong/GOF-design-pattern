//
//  Command.swift
//  DSPs
//
//  Created by choijunios on 4/26/25.
//

import Foundation

protocol Command {
    func execute()
    func rollback()
    func getDuplicate() -> Command
}

class SaveCommand: Command {
    // Dependency
    private weak var originator: Originator?
    
    // State
    private var memento: JustMementoForm?
    
    init(originator: Originator?) {
        self.originator = originator
    }
    
    func execute() {
        // 메멘토 저장
        self.memento = originator?.getMemento()
        
        // 위치정보 저장
    }
    
    func rollback() {
        // 메멘토 전달
        if let memento {
            originator?.setMemento(memento)
            self.memento = nil
        }
    }
    
    func getDuplicate() -> any Command { self }
}
