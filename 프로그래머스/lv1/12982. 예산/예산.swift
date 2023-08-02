import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let list = d.sorted()
    var budget = budget
    for (i, l) in list.enumerated() {
        if budget < l { return i }
        budget -= l
    }
    return d.count
}