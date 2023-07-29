import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int {
    var total = (1...count).map {price * $0}.reduce(0, +)
    return money >= total ? 0 : total - money
}