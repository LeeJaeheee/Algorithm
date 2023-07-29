func solution(_ s:String) -> Bool {
    return s.compactMap{Int(String($0))}.count == s.count && [4, 6].contains(s.count) ? true : false
}