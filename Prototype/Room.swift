//
//  Room.swift
//  DSPs
//
//  Created by choijunios on 4/8/25.
//

enum Direction {
    case east
    case west
    case north
    case south
}

class Room: Prototypable {
    
    required init() { }
    
    func copy() -> Self {
        type(of: self).init()
    }
    
    func setSide(_ direction: Direction, _ wall: Wall) { }
}
