//
//  StringBuilder.swift
//  DSPs
//
//  Created by choijunios on 4/9/25.
//

protocol StringBuilder {
    func addHello()
    func addWorld()
    func addSpace()
}

final class KoreanStringBuilder: StringBuilder {
    
    private var str: String = ""
    
    func addHello() { str += "안녕" }
    func addWorld() { str += "세상" }
    func addSpace() { str += " " }
    
    func getText() -> String { str }
}

final class EnglishStringBuilder: StringBuilder {
    
    private var str: String = ""
    
    func addHello() {
        if str.isEmpty { str += "Hello"
        } else { str += "hello" }
    }
    func addWorld() {
        if str.isEmpty { str += "World"
        } else { str += "world" }
    }
    func addSpace() { str += " " }
    
    func getText() -> String { str }
}
