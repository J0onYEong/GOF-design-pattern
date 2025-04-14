//
//  WithFactory.swift
//  DSPs
//
//  Created by choijunios on 4/14/25.
//

class SomeAbsractionImp { }

class ConcreteImp: SomeAbsractionImp { }

class SomeFactory {
    private static var _instance: SomeFactory?
    private init() { }
    static func instance() -> SomeFactory {
        if let _instance { return _instance }
        let ins: SomeFactory = .init()
        Self._instance = ins
        return ins
    }
    func getImp() -> SomeAbsractionImp { ConcreteImp() }
}

class SomeAbsraction {
    private var _imp: SomeAbsractionImp?
    func getImp() -> SomeAbsractionImp {
        if let _imp { return _imp }
        let imp: SomeAbsractionImp = SomeFactory.instance().getImp()
        self._imp = imp
        return imp
    }
}


class SomeRefinedAbs: SomeAbsraction {
    func doSomething() {
        let imp = getImp()
    }
}
