//: Playground - noun: a place where people can play

//// String Mutability

import UIKit

var str = "Hello, playground!!!"

var variableString = "Horse"
variableString += " and carriage."
// variableString is now "Horse and carriage"
print(variableString)

let constantString = "Highlander"
// constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified
