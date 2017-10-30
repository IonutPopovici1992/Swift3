//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

//// Arrays

// An array stores values of the same type in an ordered list.
// The same value can appear in an array multiple times at different positions.

/// Array Type Shorthand Syntax
/// Creating an Empty Array
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
// Prints "someInts is of type [Int] with 0 items."

someInts.append(3)
// someInts now contains 1 value of type Int
print(someInts)

someInts = []
// someInts is now an empty array, but is still of type [Int]
print(someInts)

/// Creating an Array with a Default Value
var threeDoubles = Array(repeatElement(0.0, count: 3))
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
print(threeDoubles)

/// Creating an Array by Adding Two Arrays Together
var anotherThreeDoubles = Array(repeatElement(2.5, count: 3))
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]
print(anotherThreeDoubles)
var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
print(sixDoubles)

/// Creating an Array with an Array Literal
var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items
print(shoppingList)
// or
var shoppingList2 = ["Eggs", "Milk"]

/// Accessing and Modifying an Array
print("The shopping list contains \(shoppingList.count) items.")
// Prints "The shopping list contains 2 items."

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
// Prints "The shopping list is not empty."

print(shoppingList)

shoppingList.append("Flour")
// shoppingList now contains 3 items, and someone is making pancakes
print(shoppingList)

shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
print(shoppingList)

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items
print(shoppingList)

var firstItem = shoppingList[0]
// firstItem is equal to "Eggs"
print(firstItem)

shoppingList[0] = "Six Eggs"
// the first item in the list is now equal to "Six eggs" rather than "Eggs"
print(shoppingList)

shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList now contains 6 items

shoppingList.insert("Maple Syrup", at: 0)
// shoppingList now contains 7 items
// "Maple Syrup" is now the first item in the list
print(shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)
// the item that was at index 0 has just been removed
// shoppingList now contains 6 items, and no Maple Syrup
// the mapleSyrup constant is now equal to the removed "Maple Syrup" string
print(mapleSyrup)

firstItem = shoppingList[0]
// firstItem is now equal to "Six eggs"
print(firstItem)

let apples = shoppingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no apples
// the apples constant is now equal to the removed "Apples" string
print(apples)

print()

/// Iterating Over an Array
for item in shoppingList {
    print(item)
}
// Six Eggs
// Milk
// Flour
// Baking Powder
// Bananas

print()

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
// Item 1: Six Eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas
