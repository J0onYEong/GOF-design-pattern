//
//  Robots.swift
//  DSPs
//
//  Created by choijunios on 4/9/25.
//

struct GreenArm: RobotArm {
    func shake() { print("Green shake") }
}

final class GreenRobotArmCreator: RobotArmCreator {
    override func createArm() -> any RobotArm {
        GreenArm()
    }
}

struct GrayArm: RobotArm {
    func shake() { print("Gray shake") }
}

final class GrayRobotArmCreator: RobotArmCreator {
    override func createArm() -> any RobotArm {
        GrayArm()
    }
}
