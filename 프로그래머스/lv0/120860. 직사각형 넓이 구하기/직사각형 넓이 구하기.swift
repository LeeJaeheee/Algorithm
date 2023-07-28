import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let xList = Set(dots.map { $0[0] }).sorted()
    let yList = Set(dots.map { $0[1] }).sorted()
    return (xList[1] - xList[0]) * (yList[1] - yList[0])
}