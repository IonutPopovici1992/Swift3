//: Playground - noun: a place where people can play

/// Optionals

import UIKit

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"
print(convertedNumber!)

// nil
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

var surveyAnswer: String?
// surveyAnswer is automatically set to nil

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123."


// Optional Binding
if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber).")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer.")
}
// Prints ""123" has an integer value of 123."


// Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark


if assumedString != nil {
    print(assumedString)
}
// Prints "An implicitly unwrapped optional string."


if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."
