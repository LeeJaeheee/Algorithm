var height: [Int] = []

while let h = readLine() {
    height.append(Int(h)!)
}
height.sort()

func dfs(_ index: Int, _ n: Int, _ sum: Int, _ temp: [Int]) {
    if !result.isEmpty {
        return
    }
    if sum == 100 && n == 0 {
        result = temp
        return
    }
    if index < 0 || index >= count || n <= 0 || sum > 100 {
        return
    }
    dfs(index+1, n-1, sum+height[index], temp+[height[index]])
    dfs(index+1, n, sum, temp)
}

let count = height.count
var result: [Int] = []
dfs(0, 7, 0, [])

for r in result {
    print(r)
}