//
//  Decorator.swift
//  DSPs
//
//  Created by choijunios on 4/15/25.
//

// - Component
class TextGenerator {
    func generate() -> String { return "" }
}

// - ConcreteComponent
class NameTextGenerator: TextGenerator {
    override func generate() -> String {
        "Choijun"
    }
}

class Decorator: TextGenerator {
    let _component: TextGenerator
    
    init(_ _component: TextGenerator) {
        self._component = _component
    }
}

class BracketDecorator: Decorator {
    override func generate() -> String {
        return "[\(_component.generate())]"
    }
}

class DoubleQuotationDecorator: Decorator {
    override func generate() -> String {
        return "\"\(_component.generate())\""
    }
}
