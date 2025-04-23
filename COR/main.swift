//
//  main.swift
//  COR
//
//  Created by choijunios on 4/23/25.
//

import Foundation

let application = Application(flag: 2)
let dialong1 = PringDialog(flag: 1)
dialong1.setSuccessor(application)
let dialong2 = PringDialog(flag: -1)
dialong2.setSuccessor(application)

let button = Button(flag: 3)
button.setSuccessor(dialong1)
print(button.getHelpMessage())

button.setSuccessor(dialong2)
print(button.getHelpMessage())
