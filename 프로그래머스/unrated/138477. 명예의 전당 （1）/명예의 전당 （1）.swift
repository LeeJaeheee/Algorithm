import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var topK: [Int] = []
    var result: [Int] = []
    for s in score {
        if topK.count < k {
            topK.append(s)
            topK.sort()
        } else if s > topK[0] {
            topK[0] = s
            topK.sort()
        }
        result.append(topK[0])
    }
    return result
}