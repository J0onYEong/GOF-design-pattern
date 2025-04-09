//
//  main.swift
//  FactoryMethod
//
//  Created by choijunios on 4/9/25.
//

import Foundation

let systemObject1: RobotArmCreator = GreenRobotArmCreator()
systemObject1.activate() // Green shake


let systemObject2: RobotArmCreator = GrayRobotArmCreator()
systemObject2.activate() // Gray shake

