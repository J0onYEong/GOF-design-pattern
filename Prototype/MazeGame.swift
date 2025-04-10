//
//  MazeGame.swift
//  DSPs
//
//  Created by choijunios on 4/10/25.
//


final class MazeGame {
    func createMaze(factory: MazePrototypeFactory) {
        let r1 = factory.makeRoom()
        let r2 = factory.makeRoom()
        let _ = factory.makeDoor(from: r1, to: r2)
        
        r1.setSide(.east, factory.makeWall())
        r1.setSide(.south, factory.makeWall())
        r1.setSide(.north, factory.makeWall())
    }
}
