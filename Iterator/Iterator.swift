//
//  Iterator.swift
//  DSPs
//
//  Created by choijunios on 4/25/25.
//

protocol Aggregate {
    func createIterator() -> any Iterator
}

protocol Iterator {
    associatedtype T
    func next() -> T?
}

class ConcreteAggregate: Aggregate {
    
    private var list: [Int] = []
    
    func append(_ element: Int) {
        list.append(element)
    }
    
    func createIterator() -> any Iterator {
        ConcreteIterator(list: self.list)
    }
}

class ConcreteIterator: Iterator {
    typealias T = Int
    private var list: [Int]
    private let startIndex: Int = 0
    private lazy var currentIndex: Int = startIndex
    
    init(list: [Int]) {
        self.list = list
    }
    
    func next() -> T? {
        defer { currentIndex+=1 }
        if currentIndex >= list.count { return nil }
        return list[currentIndex]
    }
}
