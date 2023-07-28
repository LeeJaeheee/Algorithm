import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let start = total / num - num / 2 + (num % 2 == 0 ? 1 : 0)
    return Array(start...start+num-1)
}