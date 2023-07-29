func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for i in 0..<arr1.count {
        result.append((0..<arr1[0].count).map { arr1[i][$0] + arr2[i][$0] })
    }
    return result
}