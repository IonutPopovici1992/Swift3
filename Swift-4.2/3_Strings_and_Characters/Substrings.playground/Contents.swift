/// Substrings

import UIKit

let greeting = "Hello, World !!!"
let index = greeting.index(of: ",") ?? greeting.endIndex
print(index)
let beginning = greeting[..<index]
print(beginning)
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)
print(newString)
