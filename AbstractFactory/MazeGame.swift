//
//  MazeGame.swift
//  DSPs
//
//  Created by choijunios on 4/8/25.
//

protocol MazeFactory {
    func makeDoor(from: Room, to: Room) -> Door
    func makeWall() -> Wall
    func makeRoom() -> Room
}

protocol FlexibleMazeFactory {
    func make<T>() -> T
}

final class MazeGame {
    static func createMaze(factory: MazeFactory) {
        let r1 = factory.makeRoom()
        let r2 = factory.makeRoom()
        let _ = factory.makeDoor(from: r1, to: r2)
        
        r1.setSide(.east, factory.makeWall())
        r1.setSide(.south, factory.makeWall())
        r1.setSide(.north, factory.makeWall())
    }
    
    static func createMaze(factory: FlexibleMazeFactory) {
        let r1: Room = factory.make()
        let r2: Room = factory.make()
        let _: Door = factory.make()
        
        r1.setSide(.east, factory.make())
        r1.setSide(.south, factory.make())
        r1.setSide(.north, factory.make())
    }
}
