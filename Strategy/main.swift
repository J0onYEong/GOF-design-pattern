//
//  main.swift
//  Strategy
//
//  Created by choijunios on 4/30/25.
//

import Foundation

let context1 = Context(strategy: QuickSortStrategy())
let context2 = Context(strategy: MergeSortStrategy())

for element in (0..<1000000).reversed() {
    context1.insert(element: element)
    context2.insert(element: element)
}

func checkDuration(context: Context) {
    let start = CFAbsoluteTimeGetCurrent()

    // 측정할 코드
    let _ = context.getSortedList()

    let end = CFAbsoluteTimeGetCurrent()
    let duration = end - start
    print("실행 시간: \(duration)초")
}

checkDuration(context: context1)
checkDuration(context: context2)
