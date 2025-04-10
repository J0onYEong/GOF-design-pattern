//
//  MazePrototypeFactory.swift
//  DSPs
//
//  Created by choijunios on 4/10/25.
//

protocol MazePrototypeFactory {
    func makeDoor(from: Room, to: Room) -> Door
    func makeWall() -> Wall
    func makeRoom() -> Room
}

struct ConcreteMazePrototypeFactory: MazePrototypeFactory {
    
    private let door: Door
    private let room: Room
    private let wall: Wall
    
    init(door: Door, room: Room, wall: Wall) {
        self.door = door
        self.room = room
        self.wall = wall
    }
    
    func makeDoor(from: Room, to: Room) -> Door {
        door.initialize(room1: from, room2: to)
    }
    
    func makeWall() -> Wall {
        wall.copy()
    }
    
    func makeRoom() -> Room {
        room.copy()
    }
}
