//
//  DelegateTarget.swift
//  DSPs
//
//  Created by choijunios on 4/13/25.
//

protocol TargetDelegate {
    func create() -> String
}

class Target2 {
    private var delegate: TargetDelegate
    
    init(delegate: TargetDelegate) {
        self.delegate = delegate
    }
    
    func request() {
        let str = delegate.create()
    }
}

class CoreDataAdapter: TargetDelegate {
    
    private var adaptee = CoreDataService()
    
    func create() -> String {
        return adaptee.read()
    }
}

class CoreDataService {
    func read() -> String {
        "CoreData"
    }
}
