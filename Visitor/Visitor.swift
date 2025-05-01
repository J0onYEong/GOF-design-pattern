//
//  Visitor.swift
//  DSPs
//
//  Created by choijunios on 5/1/25.
//

protocol Visitor {
    func visit(element: ElementA)
    func visit(element: ElementB)
}

class IntVisitor: Visitor {
    
    var state: Int = 0
    
    func visit(element: ElementA) {
        state += element.value1
    }
    func visit(element: ElementB) {
        state += element.value1
    }
}

class StrVisitor: Visitor {
    
    var state: String = ""
    
    func visit(element: ElementA) {
        state += element.value2
    }
    func visit(element: ElementB) {
        state += element.value2
    }
}

class Element {
    func accept(visitor: Visitor) { }
}

final class ElementA: Element {
    
    var value1: Int = 1
    var value2: String = "A"
    
    override func accept(visitor: any Visitor) {
        visitor.visit(element: self)
    }
}

final class ElementB: Element {
    
    var value1: Int = 2
    var value2: String = "B"
    
    override func accept(visitor: any Visitor) {
        visitor.visit(element: self)
    }
}
