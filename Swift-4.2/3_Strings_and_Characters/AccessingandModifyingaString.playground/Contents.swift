/// Accessing and Modifying a String

import UIKit

// String Indices
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a
// greeting[greeting.endIndex] // Error
// greeting.index(after: greeting.endIndex) // Error

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

// Inserting and Removing
var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "Hello!"
print()
print()
print(welcome)
print()
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
print(welcome)
print()
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)
print()
// welcome now equals "Hello there"
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)
