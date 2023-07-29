import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    for d in db {
        if d[0] == id_pw[0] {
            return d[1] == id_pw[1] ? "login" : "wrong pw"
        }
    }
    return "fail"
}