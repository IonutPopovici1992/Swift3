//: Playground - noun: a place where people can play

//// Concatenating Strings and Characters

import UIKit

var str = "Hello, playground!!!"

let string1 = "Hello"
let string2 = " there!"
var welcome = string1 + string2
print(welcome)
// welcome now equals "Hello there!"

var instruction = "Look over"
instruction += string2
print(instruction)
// instruction now equals "Look over there!"

let exclamationMark: Character = "!"
welcome.append(exclamationMark)
print(welcome)
