import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var lines = lines.sorted(by: {$0[0] < $1[0]})
    var (pos, result) = (lines[0][0], 0)
    
    while lines.count >= 2 {
        var count = 0
        var finished: [Int] = []
        for (i, line) in lines.enumerated() {
            if line[0] > pos { break }
            if line[1] <= pos { finished.append(i); continue }
            count += 1
            if count >= 2 { result += 1; break }
        }
        pos += 1
        finished.sorted(by: > ).forEach{ lines.remove(at: $0) }
    }
    
    return result
}