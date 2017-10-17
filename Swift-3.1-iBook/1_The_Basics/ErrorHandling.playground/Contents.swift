//: Playground - noun: a place where people can play

import UIKit

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // an error was thrown
} catch {
    // an error was thrown
}


func makeASandwich() throws {
    // ...
}

func eatASandwich() throws {
    // ...
}

func washDishes() throws {
    // ...
}

func buyGroceries() {
    // ...
}

do {
    try makeASandwich()
    try eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
