//
//  main.swift
//  Prototype
//
//  Created by choijunios on 4/10/25.
//

import Foundation

class GreenDoor: Door { }
class GreenWall: Wall { }
class GreenRoom: Room { }

let mazeGame = MazeGame()
let prototype = ConcreteMazePrototypeFactory(
    door: GreenDoor(),
    room: GreenRoom(),
    wall: GreenWall()
)
mazeGame.createMaze(factory: prototype)

