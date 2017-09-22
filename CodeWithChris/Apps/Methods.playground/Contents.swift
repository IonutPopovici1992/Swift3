//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"


class Person {
    
    var age: Int = 15
    var name: String = "Tom"
    
    func updateAgeAndName(updatedAge: Int, updatedName: String) {
        age = updatedAge
        name = updatedName
    }
    
    func increaseAge(increaseBy: Int) -> Int {
        age += increaseBy
        
        return age
    }
    
    class func getAverageAge() -> Int {
        return 50
    }
    
}

var a = Person()
a.age
a.name
a.updateAgeAndName(updatedAge: 25, updatedName: "Tim")
a.age
a.name

var b = a.increaseAge(increaseBy: 10)

Person.getAverageAge()
