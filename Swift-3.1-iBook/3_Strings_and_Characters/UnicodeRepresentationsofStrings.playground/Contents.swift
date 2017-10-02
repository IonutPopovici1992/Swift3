//: Playground - noun: a place where people can play

//// Unicode Representations of Strings

import UIKit

var str = "Hello, playground!!!"

let dogString = "Dog‼🐶"

/// UTF-8 Representation
for codeUnit1 in dogString.utf8 {
    print("\(codeUnit1) ", terminator: "")
}
print("")
// Prints "68 111 103 226 128 188 240 159 144 182 "

/// UTF-16 Representation
for codeUnit2 in dogString.utf16 {
    print("\(codeUnit2) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 55357 56374 "

/// Unicode Scalar Representation
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 128054 "

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
