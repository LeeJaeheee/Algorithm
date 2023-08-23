import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var correct = [0,0,0]
    for i in (0..<answers.count) {
        correct[0] += [1,2,3,4,5][i%5] == answers[i] ? 1 : 0
        correct[1] += [2,1,2,3,2,4,2,5][i%8] == answers[i] ? 1 : 0
        correct[2] += [3,3,1,1,2,2,4,4,5,5][i%10] == answers[i] ? 1 : 0
    }
    return (1...3).filter { correct[$0-1] == correct.max() }
}