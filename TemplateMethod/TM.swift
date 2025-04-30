//
//  TM.swift
//  DSPs
//
//  Created by choijunios on 4/30/25.
//

class AbstractClass {
    
    final func start() {
        if !doCheckCache() {
            doDownload()
        }
    }
    
    func doCheckCache() -> Bool { fatalError() }
    func doDownload() { fatalError() }
}

final class ConcreteClass: AbstractClass {
    override func doCheckCache() -> Bool {
        
        // check cache
        
        return true
    }
    override func doDownload() {
        
        // download
        
    }
}
