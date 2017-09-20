//: Playground - noun: a place where people can play

import UIKit

//// Logical NOT Operator
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED!")
}
// Prints "ACCESS DENIED!"


//// Logical AND Operator
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!!!")
} else {
    print("ACCESS DENIED!")
}
// Prints "ACCESS DENIED!"


//// Logical OR Operator
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!!!")
} else {
    print("ACCESS DENIED!")
}
// Prints "Welcome!!!"


//// Combining Logical Operators
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!!!")
} else {
    print("ACCESS DENIED!")
}
// Prints "Welcome!!!"


//// Explicit Parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!!!")
} else {
    print("ACCESS DENIED!")
}
// Prints "Welcome!!!"
