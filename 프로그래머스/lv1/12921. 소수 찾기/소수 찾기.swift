func solution(_ n:Int) -> Int {
    var isPrime = Array(repeating: true, count: n+1)
    var count = 0
    
    for i in 2...n {
        if isPrime[i] {
            count += 1
            for j in stride(from: i+i, through: n, by: i) {
                isPrime[j] = false
            }
        }
    }
    
    return count
}