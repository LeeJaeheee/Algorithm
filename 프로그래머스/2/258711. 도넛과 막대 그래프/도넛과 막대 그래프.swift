import Foundation

func solution(_ edges:[[Int]]) -> [Int] {
    
    var result: [Int] = Array(repeating: 0, count: 4)
    var outputDict: [Int: [Int]] = [:]
    var inputDict: [Int: [Int]] = [:]
    var nodes: Set<Int> = []
    
    for edge in edges {
        outputDict[edge[0], default: []].append(edge[1])
        inputDict[edge[1], default: []].append(edge[0])
        nodes.insert(edge[0])
        nodes.insert(edge[1])
    }
    
    var centers = Array(outputDict.filter { $0.value.count >= 2 })
    let unrelatedIndex = centers.firstIndex(where: { inputDict[$0.key] == nil })!
    let unrelatedNode = centers.remove(at: unrelatedIndex)
    
    result[0] = unrelatedNode.key
    result[3] = centers.count
    result[2] = nodes.max()! - outputDict.keys.count
    result[1] = unrelatedNode.value.count - result[2] - result[3]
    
    return result
}