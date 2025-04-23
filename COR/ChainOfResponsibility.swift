//
//  ChainOfResponsibility.swift
//  DSPs
//
//  Created by choijunios on 4/23/25.
//

let NO_HELP_FLAG = -1

class Handler {
    private var successor: Handler?
    private var flag: Int
    
    init(flag: Int) {
        self.flag = flag
    }
    
    func getHelpMessage() -> String {
        if let successor {
            return successor.getHelpMessage()
        }
        return "도움말이 없습니다."
    }
    func setSuccessor(_ handler: Handler) {
        self.successor = handler
    }
    func canHandle() -> Bool {
        self.flag != NO_HELP_FLAG
    }
}

class Application: Handler {
    override func getHelpMessage() -> String {
        if canHandle() {
            return "응용프로그램을 실행합니다."
        }
        return super.getHelpMessage()
    }
}

class PringDialog: Handler {
    override func getHelpMessage() -> String {
        if canHandle() {
            return "프린트를 실행합니다."
        }
        return super.getHelpMessage()
    }
}

class Button: Handler { }
