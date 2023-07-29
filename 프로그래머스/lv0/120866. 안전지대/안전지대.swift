import Foundation

func solution(_ board:[[Int]]) -> Int {
    var board = board
    let n = board.count
    for (i, bo) in board.enumerated() {
        for (j, b) in bo.enumerated() {
            if b == 1 {
                for k in i-1...i+1 {
                    for l in j-1...j+1 {
                        if 0..<n ~= k && 0..<n ~= l && board[k][l] == 0 {
                            board[k][l] = -1
                        }
                    }
                }
            }
        }
    }
    return Array(board.joined()).filter{$0 == 0}.count
}