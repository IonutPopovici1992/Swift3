//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
print(str)

class Person: NSObject {
    
    var name = ""
    var age = 0
    
    override init() {
        super.init()
    }
    
    init(name: String, age: Int) {
        super.init()
        
        // Set up your object
        self.name = name
        self.age = age
    }
    
    override var description: String {
        get {
            return "\(self.name) \(self.age)"
        }
    }
}

var a = Person(name: "Chris", age: 33)

var b = Person()
b.name
b.age

var c = Person()
c.name = "A name ..."
c.age = 21

print(a)
print(b)
print(c)
