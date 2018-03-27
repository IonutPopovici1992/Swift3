import UIKit

/// class methods

class Utils {
    
    class func Factorial(number: Int) -> Int {
        var result: Int = 1
        while number > 1 {
            result *= number
            number--
        }
        return result
    }
}

print(Utils.Factorial(number: 5))


/// instance methods

struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}

let firstPost = Post(title: "iOS Development", author: "Apple", tag: Tag(name: "Swift"))
let postDescription = firstPost.description()
