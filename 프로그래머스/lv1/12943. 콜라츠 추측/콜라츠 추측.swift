func solution(_ num:Int) -> Int {
    var count = 0
    var n = num
    
    while count < 500 && n != 1 {
        n = n.isMultiple(of: 2) ? n / 2 : n * 3 + 1
        count += 1
    }
    
    return n == 1 ? count : -1
}