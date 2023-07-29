import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let move = ["up": (0, 1), "down": (0, -1), "left": (-1, 0), "right": (1, 0)]
    var (x, y) = (0, 0)
    let (maxX, maxY) = (board[0]/2, board[1]/2)
    let (minX, minY) = (-maxX, -maxY)
    
    for k in keyinput {
        let m = move[k]!
        if minX...maxX ~= x+m.0 && minY...maxY ~= y+m.1 {
            x += m.0
            y += m.1
        }
    }
    
    return [x, y]
}