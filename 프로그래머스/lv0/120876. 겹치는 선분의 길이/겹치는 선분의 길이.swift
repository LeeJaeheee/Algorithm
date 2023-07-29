import Foundation

func solution(_ lines:[[Int]]) -> Int {
    let flatLine = Array(lines.joined())
    let (start, end) = (flatLine.min()!, flatLine.max()!)
    var result = 0

    for i in start..<end {
        var count = 0
        for line in lines {
            if line[0]..<line[1] ~= i { count += 1 } 
            if count >= 2 {
                result += 1
                break
            }
        }
    }
    return result
}