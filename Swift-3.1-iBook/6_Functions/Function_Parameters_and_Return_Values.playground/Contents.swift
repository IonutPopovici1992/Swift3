//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

/// Function Parameters and Return Values

/// Functions Without Parameters

func sayHelloWorld() -> String {
    return "Hello, World!"
}
print(sayHelloWorld())
// Prints "Hello, World!"

/// Functions With Multiple Parameters

func greet(person: String, alreadyGreeted: Bool) {
    //if alreadyGreeted {
        //return greetAgain(person: person)
    //} else {
        //return greet(person: person)
    //}
}
print(greet(person: "Tim", alreadyGreeted: true))
// Prints "Hello again, Tim!"

/// Functions Without Return Values

func greet2(person: String) {
    print("Hello, \(person)!")
}
greet2(person: "Dave")
// Prints "Hello, Dave!"

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWhithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hello, World!")
// prints "Hello, World!" and returns a value of 13
printWhithoutCounting(string: "Hello, World!")
// prints "Hello, World!" but does not return a value

/// Functions with Multiple Return Values

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return(currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
// Prints "min is -6 and max is 109"

/// Optional Tuple Return Types

func minMax2(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

if let bounds2 = minMax2(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds2.min) and max is \(bounds2.max)")
}
