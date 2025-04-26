//
//  Mediator.swift
//  DSPs
//
//  Created by choijunios on 4/26/25.
//

class Director {
    func createColleagues() { }
    func changed(sender: Colleague) { }
    func showButton() { createColleagues() }
}

class Colleague {
    private(set) weak var director: Director?
    
    init(director: Director) {
        self.director = director
    }
}

class Button: Colleague {
    func onTap() {
        director?.changed(sender: self)
    }
}

class Printer: Colleague {
    func printText(_ str: String) {
        print(str)
    }
}

final class ConcreteDirector: Director {
    private(set) var button: Button?
    private(set) var printer: Printer?
    
    override func createColleagues() {
        self.button = .init(director: self)
        self.printer = .init(director: self)
    }
    
    override func changed(sender: Colleague) {
        if sender === button {
            
            printer?.printText("button is tapped")
            
        } else if sender === printer {
            // ..
        }
    }
}
