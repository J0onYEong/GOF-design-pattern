//
//  GreenKit.swift
//  DSPs
//
//  Created by choijunios on 4/8/25.
//

final class GreenDoor: Door { }
final class GreenWall: Wall { }
final class GreenRoom: Room { }

struct GreenKit: MazeFactory {
    
    static let shared: GreenKit = .init()
    
    private init() { }
    
    func makeDoor(from: Room, to: Room) -> Door {
        GreenDoor()
    }
    
    func makeWall() -> Wall {
        GreenWall()
    }
    
    func makeRoom() -> Room {
        GreenRoom()
    }
}
