let input = readLine()!.split(separator: " ").map {Int($0)!}
var esm: [Int] = Array(repeating: 1, count: 3)
var count = 1
while esm != input {
    esm[0] = (esm[0]+1) % 16 == 0 ? 1 : (esm[0]+1) % 16
    esm[1] = (esm[1]+1) % 29 == 0 ? 1 : (esm[1]+1) % 29
    esm[2] = (esm[2]+1) % 20 == 0 ? 1 : (esm[2]+1) % 20
    count += 1
}
print(count)