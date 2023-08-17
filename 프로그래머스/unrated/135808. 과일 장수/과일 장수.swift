import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let score = score.sorted(by: >)
    let count = score.count / m
    if count == 0 { return 0 }
    
    var result = 0
    for i in (1...count) {
        result += score[i*m-1] * m
    }
    return result
}