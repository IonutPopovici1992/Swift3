//: Playground - noun: a place where people can play

//// Working with Characters

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

print()

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"
