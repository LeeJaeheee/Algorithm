import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let indices = Array(dots.indices)
    for i in 0..<dots.count-1 {
        for j in i+1..<dots.count {
            let rests = indices.filter{ ![i, j].contains($0) }
            let (dot1, dot2, dot3, dot4) = (dots[i], dots[j], dots[rests[0]], dots[rests[1]])
            
            let slope1 = Double(dot1[1] - dot2[1]) / Double(dot1[0] - dot2[0])
            let slope2 = Double(dot3[1] - dot4[1]) / Double(dot3[0] - dot4[0])
            
            if slope1 == slope2 { return 1 }
        }
    }
    return 0
}