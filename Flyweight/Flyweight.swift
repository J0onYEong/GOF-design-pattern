//
//  Flyweight.swift
//  DSPs
//
//  Created by choijunios on 4/16/25.
//

protocol TextFlyweight {
    func printText(context: TextFlyweightContext)
}

struct TextFlyweightContext {
    private var color: String = "black"
    mutating func setColor(color: String) { self.color = color }
    func getColor() -> String { color }
}

class ColorTextFlyweight: TextFlyweight {
    private let str: String
    
    init(str: String) {
        self.str = str
    }
    
    func printText(context: TextFlyweightContext) {
        let color = context.getColor()
        print("[\(color)] \(self.str)")
    }
}

class ColorTextFlyweightFactory {
    
    private var dict: [String: ColorTextFlyweight] = [:]
    
    func getObject(str key: String) -> ColorTextFlyweight {
        if let obj = dict[key] {
            return obj
        }
        let newObj = ColorTextFlyweight(str: key)
        dict[key] = newObj
        return newObj
    }
}
