//
//  RobotArmCreator2.swift
//  DSPs
//
//  Created by choijunios on 4/9/25.
//

class YellowArm: RobotArm {
    func shake() { }
}

class SubRobotArmCreator2: RobotArmCreator2 {
    override func createArm(id: String) -> any RobotArm {
        switch id {
        case "yellow":
            YellowArm()
        default:
            super.createArm(id: id)
        }
    }
}

class RobotArmCreator2 {
    func createArm(id: String) -> RobotArm {
        switch id {
        case "green":
            GreenArm()
        case "gray":
            GrayArm()
        default:
            fatalError()
        }
    }
}
