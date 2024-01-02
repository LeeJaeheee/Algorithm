import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var max = (0, 0)
    for i in 0..<sizes.count {
        let size = sizes[i].sorted()
        max.0 = max.0 < size[0] ? size[0] : max.0
        max.1 = max.1 < size[1] ? size[1] : max.1
    }
    return max.0 * max.1
}