//
//  Abstraction.swift
//  DSPs
//
//  Created by choijunios on 4/14/25.
//

protocol TVAbstractionImp {
    func turnOn()
    func turnOff()
}

class SamsungTVImp: TVAbstractionImp {
    func turnOn() {
        print("삼성TV 켬")
    }
    func turnOff() {
        print("삼성TV 종료")
    }
}

class LGTVImp: TVAbstractionImp {
    func turnOn() {
        print("LGTV 켬")
    }
    func turnOff() {
        print("LGTV 종료")
    }
}

class TVAbstraction {
    
    internal let imp: TVAbstractionImp
    
    init(imp: TVAbstractionImp) {
        self.imp = imp
    }
    
    func turnOn() {
        imp.turnOn()
    }
}

class RemoteTVAbstraction: TVAbstraction {
    func remoteTurnOn() {
        imp.turnOn()
    }
}
