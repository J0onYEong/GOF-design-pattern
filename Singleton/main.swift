//
//  main.swift
//  Singleton
//
//  Created by choijunios on 4/10/25.
//

import Foundation

Singleton.instance().printSelf() // Singleton
Singleton.instance(number: 1).printSelf() // SubSingleton1
Singleton.instance(number: 2).printSelf() // SubSingleton2
Singleton.lookUpInsance().printSelf() // SubSingleton1
