//: Playground - noun: a place where people can play

import UIKit

/*
 
 “Challenge 13: Run-length encoding
 Difficulty: Taxing
 
 Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
 
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 
 Sample input and output
 The string “aabbcc” should return “a2b2c2”.
 The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 The string “aaAAaa” should return “a2A2a2”
 
 */

func challenge13a(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    
    for letter in input {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            
            currentLetter = letter
            letterCounter = 1
        }
    }
    
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    
    return returnValue
}

assert(challenge13a(input: "aabbcc") == "a2b2c2", "Challenge failed")
assert(challenge13a(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge failed")
assert(challenge13a(input: "aaAAaa") == "a2A2a2", "Challenge failed")


func challenge13b(input: String) -> String {
    var returnValue = ""
    var letterCounter = 0
    var letterArray = Array(input)
    
    for i in 0 ..< letterArray.count {
        letterCounter += 1
        
        if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
            returnValue += "\(letterArray[i])\(letterCounter)"
            letterCounter = 0
        }
    }
    
    return returnValue
}

assert(challenge13b(input: "aabbcc") == "a2b2c2", "Challenge failed")
assert(challenge13b(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge failed")
assert(challenge13b(input: "aaAAaa") == "a2A2a2", "Challenge failed")
