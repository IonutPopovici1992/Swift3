//: Playground - noun: a place where people can play

/// Range Operators

import UIKit

/// Closed Range Operator
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

/// Half-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack

print()

/// One-Sided Ranges
for name in names[2...] {
    print(name)
}
// Brian
// Jack

print()

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

print()

for name in names[..<2] {
    print(name)
}
// Anna
// Alex

/// Other
let range = ...5
range.contains(7) // false
range.contains(4) // true
range.contains(-1) // true
