//
//  main.swift
//  Flyweight
//
//  Created by choijunios on 4/16/25.
//

import Foundation

// Client
let factory = ColorTextFlyweightFactory()
let flyweight = factory.getObject(str: "Hello")
var context = TextFlyweightContext()

context.setColor(color: "red")
flyweight.printText(context: context) // [red] Hello

context.setColor(color: "blue")
flyweight.printText(context: context) // [blue] Hello

context.setColor(color: "yellow")
flyweight.printText(context: context) // [yellow] Hello
