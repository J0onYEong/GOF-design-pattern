//
//  MazeGame.swift
//  DSPs
//
//  Created by choijunios on 4/8/25.
//

final class MazeGame {
    static func createMaze(factory: MazeFactory) {
        let r1 = factory.makeRoom()
        let r2 = factory.makeRoom()
        let door = factory.makeDoor(from: r1, to: r2)
        
        r1.setSide(.east, factory.makeWall())
        r1.setSide(.south, factory.makeWall())
        r1.setSide(.north, factory.makeWall())
    }
}
