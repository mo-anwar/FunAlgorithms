import UIKit

let tracks = ["a", "b", "c", "d", "e", "f"]
// Output = ["c", "d", "e", "f", "a", "b"]

func wrappingWithLoop<T: Equatable>(items: [T], selectedItem: T)-> [T] {
    var wrappingItems = [T]()
    var prirorItems = [T]()
    items.forEach { item in
        if item == selectedItem  || wrappingItems.count > 0{
            wrappingItems.append(item)
        } else {
            prirorItems.append(item)
        }
    }
    return wrappingItems + prirorItems
}

wrappingWithLoop(items: tracks, selectedItem: "c")

func wrappingWithPrefixSuffixT: Equatable>(items: [T], selectedItem: T)-> [T] {
    guard let selectedIndex = items.firstIndex(where: {  $0 == selectedItem }) else { return []}
    let prefixArray = items.prefix(upTo: selectedIndex)
    let suffixArray = items.suffix(from: selectedIndex)
    return Array(suffixArray + prefixArray)
}
wrappingWithPrefixSuffixT(items: tracks, selectedItem: "c")


func wrappingWithDrop<T: Equatable>(items: [T], selectedItem: T)-> [T] {
    guard let selectedIndex = items.firstIndex(where: {  $0 == selectedItem }) else { return []}
    let sliceInStart = items.dropLast(items.count - selectedIndex)
    let sliceInEnd = items.dropFirst(selectedIndex)
    return Array(sliceInEnd + sliceInStart)
}
wrappingWithDrop(items: tracks, selectedItem: "c")
