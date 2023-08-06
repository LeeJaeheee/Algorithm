import Foundation

func solution(_ food:[Int]) -> String {
    var result = ""
    for (i, f) in food.enumerated() {
        result += String(repeating: String(i), count: f/2)
    }
    return result + "0" + result.reversed()
}