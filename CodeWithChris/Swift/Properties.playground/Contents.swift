//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
print(str)

class Person {
    
    var name = ""
}

class BlogPost {
    
    // Computed property
    var fullTitle: String {
        
        // Check that title and author are not nil
        if title != nil && author != nil {
            return title! + " by " + author!.name
        }
        else if title != nil {
            return title!
        }
        else {
            return "No Title"
        }
    }
    
    var title: String?
    var body = "Hey"
    var author: Person?
    var numberOfComments = 0
}

let author = Person()
author.name = "Chris Ching"

let myPost = BlogPost()
myPost.author = author
myPost.title = "Learn Swift for Beginners"
myPost.fullTitle
print(myPost.fullTitle)
