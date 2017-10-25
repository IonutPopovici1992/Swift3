//: Playground - noun: a place where people can play

//// Ultimate Guide to JSON Parsing With Swift 4

import UIKit

var str = "Hello, playground!!!"

/// The Basics

let jsonString = {
    "name": "Endeavor",
    "abv": 8.9,
    "brewery": "Saint Arnold",
    "style": "ipa"
}

enum BeerStyle : String, Codable {
    case ipa
    case stout
    case kolsch
    // ...
}

/// Customizing Key Names

struct Beer : Codable {
    // ...
    enum CodingKeys : String, CodingKey {
        case name
        case abv = "alcohol_by_volume"
        case brewery = "brewery_name"
        case style
    }

}


let jsonData = jsonString.data(encoding: .utf8)!
let decoder = JSONDecoder()
let beer = try! decoder.decode(Beer.self, for: jsonData)

let encoder = JSONEncoder()
let data = try! encoder.encode(beer)
print(String(data: data, encoding: .utf8)!)

encoder.outputFormatting = .prettyPrinted
