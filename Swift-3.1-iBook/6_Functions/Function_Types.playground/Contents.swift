//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

//// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
print(addTwoInts(1, 2))

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
print(multiplyTwoInts(1, 2))

func printHelloWorld() {
    print("Hello, World!")
}
printHelloWorld()

/// Using Function Types
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts
print("Reult: \(mathFunction(2, 3))")

let anotherMathFunction = addTwoInts
// anotherMathFunction is inferred to be of type (Int, Int) -> Int

/// Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
// Prints "Result: 8"

/// Function Types as Return Types

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function

print()

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
// 3...
// 2...
// 1...
// zero!

//// Nested Functions

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func stepForward2(input: Int) -> Int {
        return input + 1
    }
    
    func stepBackward2(input: Int) -> Int {
        return input - 1
    }
    
    return backward ? stepBackward2 : stepForward2
}

var currentValue2 = -4
let moveNearerToZero2 = chooseStepFunction2(backward: currentValue2 > 0)
// moveNearerToZero2 now refers to the nested stepForward2() function

print()

print("Counting to zero:")
// Counting to zero:
while currentValue2 != 0 {
    print("\(currentValue2)...")
    currentValue2 = moveNearerToZero2(currentValue2)
}
print("zero!")
// -4...
// -3...
// -2...
// -1...
// zero!
