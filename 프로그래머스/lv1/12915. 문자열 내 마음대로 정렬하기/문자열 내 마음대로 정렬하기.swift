func solution(_ strings:[String], _ n:Int) -> [String] {
    let i = String.Index(encodedOffset: n)
    return strings.sorted(by: {$0[i] != $1[i] ? $0[i] < $1[i] : $0 < $1 })
}