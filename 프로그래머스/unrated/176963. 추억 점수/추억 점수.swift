import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    let dict = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    var result = Array(repeating: 0, count: photo.count)
    for (i, ph) in photo.enumerated() {
        for p in ph {
            result[i] += dict[p] ?? 0
        }
    }
    return result
}