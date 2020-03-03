import UIKit

let numbers = [1, 2, 3, 4, 5, 4, 6, 7, 4,]

let filteredNumbers = numbers.filter { $0 == 4}

let transformedNumbers = numbers.map { $0 * 3 }

let sum = numbers.reduce(0, {$0 + $1})

let optinalNumbers = [1, 2, 3, 4, nil, 4, 6, 7, 4,]

let transformedOptinalNumbers = optinalNumbers.compactMap { $0 }

