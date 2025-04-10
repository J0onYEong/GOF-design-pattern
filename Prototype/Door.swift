//
//  Door.swift
//  DSPs
//
//  Created by choijunios on 4/8/25.
//

class Door: Prototypable {
    
    var room1: Room?
    var room2: Room?
    
    required init(room1: Room? = nil, room2: Room? = nil) {
        self.room1 = room1
        self.room2 = room2
    }
    
    func initialize(room1: Room, room2: Room) -> Self {
        self.room1 = room1
        self.room2 = room2
        return self
    }
    
    func copy() -> Self {
        type(of: self).init(
            room1: self.room1,
            room2: self.room2
        )
    }
}
