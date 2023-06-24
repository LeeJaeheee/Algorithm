let n = Int(readLine()!)!
var board: [[Character]] = []

for _ in 0..<n {
    board.append(readLine()!.map {$0})
}

var maxi = -1
for i in 0..<n {
    for j in 0..<n {
        var (lrMax, upMax) = (-1, -1)
        var temp = board
        if j != n-1 {
            temp[i].swapAt(j, j+1)
            lrMax = findMax(temp, i, j)
        }
        if i != n-1 {
            temp = board
            let t = temp[i][j]
            temp[i][j] = temp[i+1][j]
            temp[i+1][j] = t
            upMax = findMax(temp, i, j)
        }
        maxi = max(maxi, lrMax, upMax)
    }
}
print(maxi)

func findMax(_ arr: [[Character]], _ row: Int, _ col: Int) -> Int {
    var (r1, r2, c1, c2) = (find(arr[row]), -1, find(arr.map {$0[col]}), -1)
    if row != n-1 {
        r2 = find(arr[row+1])
    }
    if col != n-1 {
        c2 = find(arr.map {$0[col+1]})
    }
    return max(r1, r2, c1, c2)
}

func find(_ arr: [Character]) -> Int {
    var count = 0
    var now: Character = " "
    var max = -1
    for a in arr {
        if now == a {
            count += 1
        } else {
            now = a
            count = 1
        }
        max = max < count ? count : max
    }
    return max
}