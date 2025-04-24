//
//  Command.swift
//  DSPs
//
//  Created by choijunios on 4/24/25.
//

protocol Command {
    func execute()
    func rollback()
    func getDuplicate() -> Command
}
extension Command {
    func rollback() { }
    func getDuplicate() -> Command { self }
}

struct InputCommand: Command {
    
    private let reciever: CLITool
    
    init(reciever: CLITool) {
        self.reciever = reciever
    }
    
    func execute() {
        reciever.read()
    }
}

class SaveCommand: Command {
    private let provider: StringProvider
    private let reciever: Container
    
    // For rollback
    private var prevContent: String?
    
    init(provider: StringProvider, reciever: Container) {
        self.provider = provider
        self.reciever = reciever
    }
    
    func execute() {
        let str = provider.getContent()
        self.prevContent = reciever.get()
        reciever.save(string: str)
    }
    
    func rollback() {
        guard let prevContent else { return }
        reciever.save(string: prevContent)
    }
    
    func getDuplicate() -> Command {
        let d_self = SaveCommand(provider: provider, reciever: reciever)
        d_self.prevContent = self.prevContent
        return d_self
    }
}

struct PrintCommand: Command {
    private let reciever: Container
    
    init(reciever: Container) {
        self.reciever = reciever
    }
    
    func execute() {
        print("출력: \(reciever.get())")
    }
}

struct ClosureCommand: Command {
    private var action: (() -> Void)
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    func execute() {
        action()
    }
}
