//
//  GrayKit.swift
//  AbstractFactory
//
//  Created by choijunios on 4/9/25.
//

final class GrayDoor: Door { }
final class GrayWall: Wall { }
final class GrayRoom: Room { }

final class GrayKit: FlexibleMazeFactory {

    private var dict: [String: (() -> Any)] = [:]
    
    private init() { }
    
    static func create() -> GrayKit {
        let factory = GrayKit()
        factory.dict[String(describing: Wall.self)] = { GrayWall() }
        factory.dict[String(describing: Room.self)] = { GrayRoom() }
        factory.dict[String(describing: Door.self)] = { GrayDoor() }
        return factory
    }
    
    func make<T>() -> T {
        dict[String(describing: T.self)]!() as! T
    }
}
