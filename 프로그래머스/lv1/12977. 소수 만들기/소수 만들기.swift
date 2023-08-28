import Foundation

func solution(_ nums:[Int]) -> Int {
    
    var answer = 0
    let count = nums.count
    var primes = Array(repeating: true, count: 3001)
    
    for i in 2...3000 {
        if primes[i] == true {
            var j = 2
            while j <= 3000/i {
                primes[i*j] = false
                j += 1
            }
        }
    }

    for i in 0..<count-2 {
        for j in i+1..<count-1 {
            for k in j+1..<count {
                if primes[nums[i]+nums[j]+nums[k]] {
                    answer += 1
                }
            }
        }
    }

    return answer
}