import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let dot1 = dots[0]
    for i in 1..<dots.count {
        let rests = [1,2,3].filter{ $0 != i }
        let (dot2, dot3, dot4) = (dots[i], dots[rests[0]], dots[rests[1]])
            
        let slope1 = Double(dot1[1] - dot2[1]) / Double(dot1[0] - dot2[0])
        let slope2 = Double(dot3[1] - dot4[1]) / Double(dot3[0] - dot4[0])
            
        if slope1 == slope2 { return 1 }
    }
    return 0
}