//
//  main.swift
//  Mediator
//
//  Created by choijunios on 4/26/25.
//

import Foundation

fileprivate let director = ConcreteDirector()
director.showButton()

director.button?.onTap()


fileprivate let selectableDirector = SelectableDirector()
selectableDirector.showButton()

selectableDirector.button?.onTap()
