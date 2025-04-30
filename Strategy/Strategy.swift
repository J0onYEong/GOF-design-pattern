//
//  Strategy.swift
//  DSPs
//
//  Created by choijunios on 4/30/25.
//

class Context {
    private var set: Set<Int> = []
    private let strategy: Strategy
    
    init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func insert(element: Int) {
        set.insert(element)
    }
    
    func getSortedList() -> [Int] {
        strategy.sort(list: Array(set))
    }
}

protocol Strategy {
    func sort(list: [Int]) -> [Int]
}

struct QuickSortStrategy: Strategy {
    func sort(list: [Int]) -> [Int] {
        list.sorted(by: <)
    }
}

struct MergeSortStrategy: Strategy {
    func sort(list: [Int]) -> [Int] {
        var copy = list
        mergeSort(&copy, 0, copy.count - 1)
        return copy
    }

    private func mergeSort(_ list: inout [Int], _ low: Int, _ high: Int) {
        guard low < high else { return }
        let mid = (low + high) / 2
        mergeSort(&list, low, mid)
        mergeSort(&list, mid + 1, high)
        merge(&list, low, mid, high)
    }

    private func merge(_ list: inout [Int], _ low: Int, _ mid: Int, _ high: Int) {
        let left = Array(list[low...mid])
        let right = Array(list[mid+1...high])

        var i = 0, j = 0, k = low
        while i < left.count && j < right.count {
            if left[i] < right[j] {
                list[k] = left[i]
                i += 1
            } else {
                list[k] = right[j]
                j += 1
            }
            k += 1
        }

        while i < left.count {
            list[k] = left[i]
            i += 1
            k += 1
        }

        while j < right.count {
            list[k] = right[j]
            j += 1
            k += 1
        }
    }
}
