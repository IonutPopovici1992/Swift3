//: Playground - noun: a place where people can play

import UIKit

func canThrowAnError() throw {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // an error was thrown
} catch {
    // an error was thrown
}


func makeASandwich() throw {
    // ...
}

do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
