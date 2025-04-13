//
//  main.swift
//  Adapter
//
//  Created by choijunios on 4/13/25.
//

import Foundation

let target1: Target = FileSystemAdapter()
print(target1.request())

let target2 = Target2(delegate: CoreDataAdapter())
print(target2.request())
