//// Function Argument Labels and Parameter Names

import UIKit

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)

/// Specifying Argument Labels

func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

/// Omitting Argument Labels

func someFunction2(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction2(1, secondParameterName: 2)

/// Default Parameter Values

func someFunction3(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction3(parameterWithoutDefault: 3, parameterWithDefault: 6)
// parameterWithDefault is 6
someFunction3(parameterWithoutDefault: 4) // parameterWithDefault is 12

/// Variadic Parameters
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}
print(arithmeticMean(1, 2, 3, 4, 5))
// returns 3.0, which is the arithmetic mean of these five numbers

print(arithmeticMean(3, 8.25, 18.75))
// returns 10.0, which is the arithmetic mean of these three numbers

/// In-Out Parameters

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt) and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"
