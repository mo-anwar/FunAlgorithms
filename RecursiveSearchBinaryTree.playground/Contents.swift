import UIKit
// 1. tree
//         10
//        /  \
//       5    14
//     /    /    \
//    1    11    20

// 2. Data Structure

class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    var levelCount = 0
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

// 3. Implement a search algorithm that searches throught this tree for a particular searchValue
// left Branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

// Right Branch
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let forteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

let tenNode = Node(value: 10, leftChild: fiveNode, rightChild: forteenNode)

func search(node: Node?, searchValue: Int)-> Bool {
    guard let node = node else { return false }
    if node.value == searchValue {
        return true
    } else if searchValue < node.value {
        return search(node: node.leftChild, searchValue: searchValue)
    } else {
        return search(node: node.rightChild, searchValue: searchValue)
    }
}

search(node: tenNode, searchValue: 1)
tenNode
