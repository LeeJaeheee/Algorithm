import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    for (i, l) in d.sorted().enumerated() {
        if budget < l { return i }
        budget -= l
    }
    return d.count
}