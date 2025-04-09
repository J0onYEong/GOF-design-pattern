//
//  main.swift
//  AbstractFactory
//
//  Created by choijunios on 4/9/25.
//

import Foundation

MazeGame.createMaze(factory: GreenKit.shared)
MazeGame.createMaze(factory: GrayKit.create())
