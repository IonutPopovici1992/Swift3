//: Playground - noun: a place where people can play

/// Handling Dates

import UIKit

var str = "Hello, playground!!!"

/*
{
    "date" : 519751611.12542897
}
*/

struct Foo: Encodable {
    let date: Date
}

let encoder = JSONEncoder()
let foo = Foo(date: Date())
try! encoder.encode(foo)
print(foo)

encoder.dateEncodingStrategy = .iso8601
print(foo)

// let dateFormat = "EEEE, MMM d, yyyy"
// encoder.dateEncodingStrategy = .formatted(<#T##DateFormatter#>)

// encoder.dateEncodingStrategy = .custom(<#T##(Date, Encoder) throws -> Void#>)
// .millisecondsSince1970
// .secondsSince1970
