func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    let arr1 = getBinArr(n, arr1)
    let arr2 = getBinArr(n, arr2)
    var result: [String] = []
    for i in 0..<n {
        var str = ""
        for j in 0..<n {
            str.append(arr1[i][j] == "1" || arr2[i][j] == "1" ? "#" : " ")
        }
        result.append(str)
    }
    return result
}

func getBinArr(_ n: Int, _ arr: [Int]) -> [[Character]] {
    return arr.map { num in
                     var a = Array(String(num, radix: 2))
                     a = Array(repeating: "0", count: n - a.count) + a
                     return a }
}