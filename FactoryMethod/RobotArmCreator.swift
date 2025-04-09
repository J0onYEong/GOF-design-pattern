//
//  RobotArmCreator.swift
//  DSPs
//
//  Created by choijunios on 4/9/25.
//

protocol RobotArm {
    func shake()
}

class RobotArmCreator {
    final func activate() {
        let arm = createArm()
        arm.shake()
    }
    
    func createArm() -> RobotArm { fatalError() }
}
