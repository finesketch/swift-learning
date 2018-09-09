//: Playground - noun: a place where people can play

import Cocoa

/*
 
 “Challenge 5: Count the characters
 Difficulty: Easy
 
 Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
 
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 
 Sample input and output
 The letter “a” appears twice in “The rain in Spain”.
 The letter “i” appears four times in “Mississippi”.
 The letter “i” appears three times in “Hacking with Swift”.”
 
 */

func challenge5a(input: String, count: Character) -> Int {
    var letterCount = 0
    
    for letter in input {
        if letter == count {
            letterCount += 1;
        }
    }
    
    return letterCount
}

assert(challenge5a(input: "The rain in Spain", count: "a") == 2, "Challenge failed")
assert(challenge5a(input: "Mississippi", count: "i") == 4, "Challenge failed")
assert(challenge5a(input: "Hacking with Swift", count: "i") == 3, "Challenge failed")


func challenge5b(input: String, count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
}

assert(challenge5b(input: "The rain in Spain", count: "a") == 2, "Challenge failed")
assert(challenge5b(input: "Mississippi", count: "i") == 4, "Challenge failed")
assert(challenge5b(input: "Hacking with Swift", count: "i") == 3, "Challenge failed")


func challenge5c(input: String, count: String) -> Int {
    let array = input.map { String($0) }
    let counted = NSCountedSet(array: array)
    return counted.count(for: count)
}

assert(challenge5c(input: "The rain in Spain", count: "a") == 2, "Challenge failed")
assert(challenge5c(input: "Mississippi", count: "i") == 4, "Challenge failed")
assert(challenge5c(input: "Hacking with Swift", count: "i") == 3, "Challenge failed")


func challenge5d(input: String, count: String) -> Int {
    let modified = input.replacingOccurrences(of: count, with: "")
    return input.count - modified.count
}

assert(challenge5d(input: "The rain in Spain", count: "a") == 2, "Challenge failed")
assert(challenge5d(input: "Mississippi", count: "i") == 4, "Challenge failed")
assert(challenge5d(input: "Hacking with Swift", count: "i") == 3, "Challenge failed")




