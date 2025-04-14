//
//  Composite.swift
//  DSPs
//
//  Created by choijunios on 4/14/25.
//

enum ComponentError: Error {
    case uncapablity
}

class Component {
    func operation() -> Int { return 0 }
    func add(component: Component) throws { throw ComponentError.uncapablity }
    func remove(component: Component) throws { throw ComponentError.uncapablity }
}

class Composite: Component {
    private var array: [Component] = []
    override func operation() -> Int {
        var total: Int = 0
        for child in array {
            total += child.operation()
        }
        return total
    }
    override func add(component: Component) throws {
        array.append(component)
    }
    override func remove(component: Component) throws {
        guard let index = array.firstIndex(where: { $0 === component }) else { return }
        array.remove(at: index)
    }
}

class Leaf1: Component {
    override func operation() -> Int {
        return 10
    }
}

class Leaf2: Component {
    override func operation() -> Int {
        return 20
    }
}
