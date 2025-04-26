//
//  Selectable.swift
//  DSPs
//
//  Created by choijunios on 4/26/25.
//

import Foundation

protocol ControlableUI {
    associatedtype Event: Equatable
    func addTarget(_ target: AnyObject, action: Selector, event: Event)
}

class ControlableButton: ControlableUI {
    
    private var target: AnyObject?
    private var actions: [Event: Selector] = [:]
    
    enum ButtonEvent {
        case tap
    }
    typealias Event = ButtonEvent
    
    func addTarget(_ target: AnyObject, action: Selector, event: Event) {
        self.target = target
        self.actions[event] = action
    }
    
    func onTap() {
        guard let target else { return }
        if target.responds(to: actions[.tap]) {
            _ = target.perform(actions[.tap])
        }
    }
}

class SelectableDirector: Director {
    private(set) var button: ControlableButton?
    private(set) var printer: Printer?
    
    override func createColleagues() {
        self.button = .init()
        self.printer = .init(director: self)
        
        button?.addTarget(self, action: #selector(onTap), event: .tap)
    }
    
    @objc
    func onTap() {
        printer?.printText("Button is tapped")
    }
}
