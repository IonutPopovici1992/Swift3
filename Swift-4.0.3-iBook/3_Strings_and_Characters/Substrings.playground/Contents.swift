//: Playground - noun: a place where people can play

/// Substrings

import UIKit

var str = "Hello, playground!!!"

let greeting = "Hello, world!!!"
let index = greeting.index(of: ",") ?? greeting.endIndex
print(index)
let beginning = greeting[..<index]
print(beginning)
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)
print(newString)
