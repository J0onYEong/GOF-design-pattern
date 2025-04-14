//
//  main.swift
//  Composite
//
//  Created by choijunios on 4/14/25.
//

import Foundation

do {
    let composite = Composite()
    try composite.add(component: Leaf1())
    try composite.add(component: Leaf2())
    print(composite.operation())
    
    let leaf = Leaf1()
    try leaf.add(component: Leaf2())
} catch {
    print(error)
}
