//
//  main.swift
//  Visitor
//
//  Created by choijunios on 5/1/25.
//

import Foundation

let objectStructure = [ElementA(), ElementB()]

let visitor1 = IntVisitor()
objectStructure.forEach { element in
    element.accept(visitor: visitor1)
}
print(visitor1.state) // 3


let visitor2 = StrVisitor()
objectStructure.forEach { element in
    element.accept(visitor: visitor2)
}
print(visitor2.state) // AB
