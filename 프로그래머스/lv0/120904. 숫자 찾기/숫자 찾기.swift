import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    return (String(num).map{ String($0) }.firstIndex(of: String(k)) ?? -2) + 1
}