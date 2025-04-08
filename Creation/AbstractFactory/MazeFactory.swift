//
//  MazeFactory.swift
//  DSPs
//
//  Created by choijunios on 4/8/25.
//

protocol MazeFactory {
    func makeDoor(from: Room, to: Room) -> Door
    func makeWall() -> Wall
    func makeRoom() -> Room
}
