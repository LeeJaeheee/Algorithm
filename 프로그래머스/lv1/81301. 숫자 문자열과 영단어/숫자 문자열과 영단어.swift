import Foundation

func solution(_ s:String) -> Int {
    var s = s
    let arr = [["zero","0"], ["one","1"], ["two","2"], ["three","3"], ["four","4"], 
               ["five","5"], ["six","6"], ["seven","7"], ["eight","8"], ["nine","9"]]
    arr.forEach{ s = String(s.replacingOccurrences(of: $0[0], with: $0[1])) }
    return Int(s)!
}