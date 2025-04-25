//
//  main.swift
//  Iterator
//
//  Created by choijunios on 4/25/25.
//

import Foundation

let aggregate = ConcreteAggregate()

(0..<10).forEach({ aggregate.append($0) })

let iterator = aggregate.createIterator()
while let element = iterator.next() {
    print(element)
}
