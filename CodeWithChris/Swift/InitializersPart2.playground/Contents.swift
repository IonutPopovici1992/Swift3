//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
print(str)

class Person {
    
    var name = ""
}

class BlogPost {
    
    var title: String
    var body = "Hey"
    var author: Person
    var numberOfComments = 0
    
    init() {
        title = "My Title"
        author = Person()
    }
    
    convenience init(customTitle: String) {
        self.init()
        title = customTitle
    }
}

let post = BlogPost(customTitle: "A custom title")
print(post)
