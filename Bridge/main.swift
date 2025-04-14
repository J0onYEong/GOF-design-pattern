//
//  main.swift
//  Bridge
//
//  Created by choijunios on 4/14/25.
//

import Foundation

let abs1 = TVAbstraction(imp: SamsungTVImp())
abs1.turnOn()

let abs2 = RemoteTVAbstraction(imp: SamsungTVImp())
abs2.remoteTurnOn()

let abs3 = SomeRefinedAbs()
abs3.doSomething()
