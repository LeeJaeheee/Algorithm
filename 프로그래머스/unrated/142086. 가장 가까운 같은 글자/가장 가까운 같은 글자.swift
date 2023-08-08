import Foundation

func solution(_ s:String) -> [Int] {
    var result = [Int]()
    var dict: [Character: Int] = [:]

    for (i, ch) in s.enumerated() {
        result.append(dict[ch] == nil ? -1 : i - dict[ch]!)
        dict[ch] = i
    }
    
    return result
}