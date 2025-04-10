//
//  Singleton.swift
//  DSPs
//
//  Created by choijunios on 4/10/25.
//

class Singleton {
    
    static let shared: Singleton = .init()
    
    private static var _instance: Singleton?
    static func instance() -> Singleton {
        if let _instance {
            return _instance
        }
        let instance = Singleton()
        Self._instance = instance
        return instance
    }
    
    static func instance(number: Int) -> Singleton {
        switch number {
        case 1:
            SubSingleton1()
        case 2:
            SubSingleton2()
        default:
            instance()
        }
    }
    
    
    private static var instanceStore: [String: Singleton] = [:]
    static func lookUp(name: String) -> Singleton? {
        instanceStore[name]
    }
    static func register(name: String, object: Singleton) {
        instanceStore[name] = object
    }
    
    static func lookUpInsance() -> Singleton {
        let env = "type1"
        if let object = lookUp(name: env) {
            return object
        }
        return instance()
    }
    
    init() { }
    
    func printSelf() {
        print(String(describing: Self.self))
    }
}

class SubSingleton1: Singleton {
    static let instance: SubSingleton1 = .init()
    
    override init() {
        super.init()
        Singleton.register(name: "type1", object: self)
    }
}
class SubSingleton2: Singleton { }
