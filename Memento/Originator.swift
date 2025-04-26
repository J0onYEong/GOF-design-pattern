//
//  Originator.swift
//  DSPs
//
//  Created by choijunios on 4/26/25.
//

protocol Originator: AnyObject {
    func getMemento() -> JustMementoForm
    func setMemento(_ memento: JustMementoForm)
}
