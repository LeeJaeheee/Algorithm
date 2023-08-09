import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var n = n
    var result = 0
    while a <= n {
        let (received, percent) = (b * (n/a), n % a)
        result += received
        n = percent + received
    }
    return result
}