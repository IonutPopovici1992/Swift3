//
//  DogViewModel.swift
//  MVVM_Part1
//
//  Created by John on 5/14/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

class DogViewModel {
    private var myDog: Dog
    
    init(name: String) {
        self.myDog = Dog(dogname: name)
    }
    
    var dogName: String {
        return myDog.name
    }
    
    var dogLegs: String {
        return "\(myDog.legs)"
    }
    
    var dogNameAndLegs: String {
        return "The Dog \(myDog.name) has \(myDog.legs) legs"
    }

}
