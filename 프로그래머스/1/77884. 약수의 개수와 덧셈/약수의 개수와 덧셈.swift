import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    return (left...right).reduce(0) { sum, num in
        let sqrt = Int(Double(num).squareRoot())
        return sum + ((sqrt * sqrt == num) ? -num : num)
    }
}