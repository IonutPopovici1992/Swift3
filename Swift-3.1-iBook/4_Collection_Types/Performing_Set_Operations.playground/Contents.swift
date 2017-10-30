//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

//// Performing Set Operations

/// Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

let union = oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(union)

let intersection = oddDigits.intersection(evenDigits).sorted()
// []
print(intersection)

let subtracting = oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
print(subtracting)

let symmetricDifference = oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]
print(symmetricDifference)

print()

/// Set Membership and Equality

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

let isSubset = houseAnimals.isSubset(of: farmAnimals)
print(isSubset)
// true
let isSuperset = farmAnimals.isSuperset(of: houseAnimals)
print(isSuperset)
// true
let isDisjoint = farmAnimals.isDisjoint(with: cityAnimals)
print(isDisjoint)
// true
