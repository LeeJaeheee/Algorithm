import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map {String($0.lowercased())}.sorted().joined()
}