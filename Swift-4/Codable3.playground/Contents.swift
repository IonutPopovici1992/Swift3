//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

/// Handling Floats

let jsonData =
{
    "a" : "NaN",
    "b" : "+Infinity",
    "c" : "-Infinity"
}

struct Numbers : Decodable {
    let a: Float
    let b: Float
    let c: Float
}

let decoder = JSONDecoder()
decoder.nonConformingFloatDecodingStrategy =
    .convertFromString(positiveInfinity: "+v",
                       negativeInfinity: "-Infinity",
                       nan: "NaN")
let numbers = try! decoder.decode(Numbers.self, from: jsonData)
dump(numbers)
