//: Playground - noun: a place where people can play

//// Strings Are Value Types

import UIKit

var str = "Hello, playground!!!"

for character in "Dog!🐶" {
    print(character)
}
// D
// o
// g
// !
// 🐶

let exclamationMark: Character = "!"
print()

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"
