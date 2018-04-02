import UIKit

//// Class methods

class CharacterAchetype {
    class var isInDistress: Bool { return false }
}

class DamselInDistress: CharacterAchetype {
    
    override class var isInDistress: Bool { return true }
    
    let name: String
    let hairColor: UIColor
    let race: String
    
    init(name inName: String, hairColor inHairColor: UIColor, race inRace: String) {
        name = inName
        hairColor = inHairColor
        race = inRace
    }
}

var spiderManMaryJane = DamselInDistress(name: "Mary Jane", hairColor: .red, race: "white")
DamselInDistress.isInDistress
var fifthElement = DamselInDistress(name: "Russian Girl", hairColor: .yellow, race: "white")


class Utils {
    
//    class Factorial {
//        let factor: Int
//
//        init(number inNumber: Int) {
//            var number = inNumber
//            var result: Int = 1
//            while number > 1 {
//                result *= number
//                number -= 1
//            }
//            factor = result
//        }
//    }

    class func factorial(number: Int) -> Int {
        var result: Int = 1
        var mutableNumber = number
        while mutableNumber > 1 {
            result *= mutableNumber
            mutableNumber -= 1
        }
        return result
    }

}

Utils.factorial(number: 5)
var number: Int = 5
print(number) // -> expect "5"
Utils.factorial(number: number)
print(number) // -> expect "1"

print(Utils.factorial(number: 5))
var utils = Utils()


//// Instance methods

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
