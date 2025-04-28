//
//  State.swift
//  DSPs
//
//  Created by choijunios on 4/28/25.
//

class Context {
    fileprivate var state: State
    
    init(state: State) {
        self.state = state
    }
    
    func request() {
        state.handle(context: self)
    }
}

protocol State {
    func setState(context: Context, state: StateCase)
    func handle(context: Context)
}
extension State {
    func setState(context: Context, state: StateCase) {
        context.state = state.object
    }
}

enum StateCase {
    case a, b
    var object: State {
        switch self {
        case .a:
            AState.instance
        case .b:
            BState.instance
        }
    }
}

struct AState: State {
    static let instance: AState = .init()
    private init() { }
    func handle(context: Context) {
        print("A State")
        setState(context: context, state: .b)
    }
}

struct BState: State {
    static let instance: BState = .init()
    private init() { }
    func handle(context: Context) {
        print("B State")
    }
}
