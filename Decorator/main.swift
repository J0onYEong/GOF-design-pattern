//
//  main.swift
//  Decorator
//
//  Created by choijunios on 4/15/25.
//

import Foundation

let comp1: TextGenerator = BracketDecorator(NameTextGenerator())
let comp2: TextGenerator = DoubleQuotationDecorator(NameTextGenerator())
let comp3: TextGenerator = BracketDecorator(DoubleQuotationDecorator(NameTextGenerator()))
let comp4: TextGenerator = DoubleQuotationDecorator(BracketDecorator(NameTextGenerator()))

print(comp1.generate()) // [Choijun]
print(comp2.generate()) // "Choijun"
print(comp3.generate()) // ["Choijun"]
print(comp4.generate()) // "[Choijun]"
