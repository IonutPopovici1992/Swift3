//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
print(str)

let a = 10
let b = 1
let c = 3

if (a < 4 || b < 4) && c != 3 {
    print("Branch 1")
}
else if a < 8 {
    print("Branch 2")
}
else if !(a == 10 && b == 1) {
    print("Branch 3")
}
else {
    print("Nothing was true!")
}
