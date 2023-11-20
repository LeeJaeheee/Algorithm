func solution(_ s:String) -> String {
    var index = 0

    return s.map { char in
        if char == " " {
            index = 0
            return " "
        } else {
            let result = index % 2 == 0 ? char.uppercased() : char.lowercased()
            index += 1
            return result
        }
    }.joined()
}