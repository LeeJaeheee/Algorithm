import Foundation

func solution(_ numbers:String) -> Int {
    var numStr = numbers
    let strArr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    var result: String = ""
    while !numStr.isEmpty {
        for (i, str) in strArr.enumerated() {
            if numStr.hasPrefix(str) {
                result += String(i)
                numStr.removeFirst(str.count)
                break
            }
        }
    }
    return Int(result)!
}