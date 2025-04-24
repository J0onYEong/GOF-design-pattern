//
//  Utils.swift
//  DSPs
//
//  Created by choijunios on 4/24/25.
//

class CLITool {
    private var buffer: String = ""
    func read() {
        self.buffer = ""
        if let str = readLine() {
            buffer = str
        }
    }
    func getBuffer() -> String { buffer }
}


protocol StringProvider {
    func getContent() -> String
}

class StringProviderAdapter: StringProvider {
    private let cliTool: CLITool
    init(cliTool: CLITool) {
        self.cliTool = cliTool
    }
    func getContent() -> String {
        cliTool.getBuffer()
    }
}

class Container {
    private var str: String = ""
    
    func get() -> String { str }
    func save(string: String) {
        self.str = string
        print("✅ 저장 완료")
    }
}
