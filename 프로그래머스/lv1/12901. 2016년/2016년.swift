func solution(_ a:Int, _ b:Int) -> String {
    let day = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var date = a >= 2 ? month[0...a-2].reduce(0, +) + b : b
    return day[date % 7]
}