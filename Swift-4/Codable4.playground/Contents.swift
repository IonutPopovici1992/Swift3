//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

/// Decodable

let urlString = "https://gist.githubusercontent.com/iosRevisited/bf28f444c262591b1807949ff40a2222/raw/695b2de9bc364762377d64595bf2b25a8de69786/sample.json"

struct Tutorial: Decodable {
    let id : Int
    let name : String
    let link : String
    let imageUrl : String
}

// let myTutorial = Tutorials(id: 1, name: "My Tutorial", link: urlString, imageUrl: "Some images")
// print(myTutorial)
// let myTutorial = Tutorials(json: json)
// print(tutorial.name)

// guard let url = URL(string: urlString) else {
//     return
// }

// URLSession.shared.dataTask(with: url) { (data, response, err) in
//     guard let data = data else { return }
// }

let myTutorial = try JSONDecoder().decode(Tutorial.self, from: data)
print(myTutorial.name)
