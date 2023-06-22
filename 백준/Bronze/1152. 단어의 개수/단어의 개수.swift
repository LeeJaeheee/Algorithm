import Foundation

let input = readLine()!
print(input.components(separatedBy: " ").filter{$0 != ""}.count)