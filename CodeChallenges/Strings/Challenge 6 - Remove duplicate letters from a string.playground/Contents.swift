//: Playground - noun: a place where people can play

import Cocoa

/*
 
 “Challenge 6: Remove duplicate letters from a string
 Difficulty: Easy
 
 Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
 
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
 
 Sample input and output
 The string “wombat” should print “wombat”.
 The string “hello” should print “helo”.
 The string “Mississippi” should print “Misp”.”
 
 */


func challenge6a(input: String) -> String {
    return String(Set(input))
}

assert(challenge6a(input: "wombat") == "wombat", "Challenge failed")
assert(challenge6a(input: "hello") == "helo", "Challenge failed")
assert(challenge6a(input: "Mississippi") == "Misp", "Challenge failed")


func challenge6b(input: String) -> String {
    let array = input.map { String($0) }
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    return letters.joined()
}

assert(challenge6b(input: "wombat") == "wombat", "Challenge failed")
assert(challenge6b(input: "hello") == "helo", "Challenge failed")
assert(challenge6b(input: "Mississippi") == "Misp", "Challenge failed")


func challenge6c(input: String) -> String {
    var used = [Character]()
    
    for letter in input {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    
    return String(used)
}

assert(challenge6c(input: "wombat") == "wombat", "Challenge failed")
assert(challenge6c(input: "hello") == "helo", "Challenge failed")
assert(challenge6c(input: "Mississippi") == "Misp", "Challenge failed")


func challenge6d(input: String) -> String {
    var used = [Character: Bool]()
    
    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}


