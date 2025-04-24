//
//  main.swift
//  Command
//
//  Created by choijunios on 4/24/25.
//

import Foundation

class Invoker {
    private var rollbackableCommands: [Command] = []
    
    private let saveCommand: Command
    private let inputCommand: Command
    private let printCommand: Command
    private var rollbackCommand: Command!
    
    init(saveCommand: Command, inputCommand: Command, printCommand: Command) {
        self.saveCommand = saveCommand
        self.inputCommand = inputCommand
        self.printCommand = printCommand
        self.rollbackCommand = ClosureCommand(action: { [weak self] in
            guard let self else { return }
            if let recentCommand = rollbackableCommands.last {
                recentCommand.rollback()
                rollbackableCommands.removeLast()
            }
        })
    }
    
    func run() {
        print("""
        명령을 입력하세요:
        (1)쓰기, (2)저장, (3)저장된 값 출력, (4)되돌리기, (5) 종료 
        """)
        while(true) {
            print("[명령]: ", terminator: "")
            guard let input = readLine(), let commandNumber = Int(input), (1...5).contains(commandNumber) else {
                print("잘못된 입력입니다.")
                continue
            }
            switch commandNumber {
            case 1:
                inputCommand.execute()
            case 2:
                saveCommand.execute()
                rollbackableCommands.append(saveCommand.getDuplicate())
            case 3:
                printCommand.execute()
            case 4:
                rollbackCommand.execute()
            case 5:
                return
            default:
                fatalError()
            }
        }
    }
}

let cliTool = CLITool()
let stringProvider: StringProvider = StringProviderAdapter(cliTool: cliTool)
let stringContainer = Container()
let invoker = Invoker(
    saveCommand: SaveCommand(provider: stringProvider, reciever: stringContainer),
    inputCommand: InputCommand(reciever: cliTool),
    printCommand: PrintCommand(reciever: stringContainer)
)
invoker.run()
