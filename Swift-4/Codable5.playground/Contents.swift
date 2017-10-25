//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

/// Handling Data

// JSONEncoder
// .base64
// .custom( (Data, Encoder) throws -> Void )

// JSONDecoder
// .base64
// .custom( (Decoder) throws -> Data )


/// Handling URLs
// let myJson = {
//     "title": "NSDateFormatter - Easy Skeezy Date Formatting...",
//     "url": "http://nsdateformatter.com"
// }

struct WebPage : Codable {
    let title: String
    let url: URL
}


/// Wrapper Keys
// {
//     "beers": [ {...} ]
// }

struct Beer : Codable {
    
}

struct BeerList : Codable {
    let beers: [Beer]
}


/// Root Level Arrays
let decoder1 = JSONDecoder()
let beers = try decoder.decode([Beer].self, from: data)


/// Dealing with Object Wrapping Keys
// [
//     {
//         "beer" : {
//             "id": "uuid12459078214",
//             "name": "Endeavor",
//             "abv": 8.9,
//             "brewery": "Saint Arnold",
//             "style": "ipa"
//         }
//     }
// ]

let decoder2 = JSONDecoder()
let beers = try decoder.decode([[String:Beer]], from: data)
dump(beers)


/// Custom Encoding

