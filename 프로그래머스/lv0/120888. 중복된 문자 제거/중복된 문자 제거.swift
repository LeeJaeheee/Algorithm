import Foundation

func solution(_ my_string:String) -> String {
    var setStr = Set(my_string)
    var result = ""
    for m in my_string {
        if setStr.contains(m) {
            result.append(m)
            setStr.remove(m)
        }
    }
    return result
}