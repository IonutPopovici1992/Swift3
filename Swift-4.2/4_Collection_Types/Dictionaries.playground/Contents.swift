/// Dictionaries

import UIKit

/// Dictionary Type Shorthand Syntax

/// Creating an Empty Dictionary
var namesOfIntegers = [Int: String]()
// namesOfIntegers is an empty [Int: String] dictionary
namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]

/// Creating a Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports)

/// Accessing and Modifying a Dictionary
print("The airports dictionary contains \(airports.count) items.")
// Prints "The airports dictionary contains 2 items."

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
// Prints "The airports dictionary is not empty."
print()

airports["LHR"] = "London"
// the airports dictionary now contains 3 items
print(airports)
print()

airports["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"
print(airports)
print()

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
// Prints "The old value for DUB was Dublin."
print()

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}
// Prints "The name of the airport is Dublin Airport."
print()

airports["APL"] = "Apple International"
// "Apple International" is not the real airport for APL, so delete it
airports["APL"] = nil
// APL has now been removed from the dictionary

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// Prints "The removed airport's name is Dublin Airport."
print()

/// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
// YYZ: Toronto Pearson
// LHR: London Heathrow
print()

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

// Airport code: YYZ
// Airport code: LHR
print()

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: Toronto Pearson
// Airport name: London Heathrow
print()

let airportCodes = [String](airports.keys)
// airportCodes is ["YYZ", "LHR"]
print(airportCodes)

let airportNames = [String](airports.values)
// airportNames is ["Toronto Pearson", "London Heathrow"]
print(airportNames)
