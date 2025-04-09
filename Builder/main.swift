//
//  main.swift
//  Builder
//
//  Created by choijunios on 4/9/25.
//

import Foundation

let builder1 = KoreanStringBuilder()
StringDirector.createHelloWorld(builder: builder1)

let korText = builder1.getText()
print(korText)


let builder2 = EnglishStringBuilder()
StringDirector.createHelloWorld(builder: builder2)

let enText = builder2.getText()
print(enText)
