import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    var num1 = a
    var num2 = b

    while num2 != 0 {
        let remainder = num1 % num2
        num1 = num2
        num2 = remainder
    }
    return num1
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    let gcdValue = gcd(n, m)
    let lcmValue = n * m / gcdValue
    return [gcdValue, lcmValue]
}