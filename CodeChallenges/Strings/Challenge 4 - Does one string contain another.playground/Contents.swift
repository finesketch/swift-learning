//: Playground - noun: a place where people can play

import Cocoa

/*
 
 “Challenge 4: Does one string contain another?
 Difficulty: Easy
 
 Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
 
 Sample input and output
 The code "Hello, world".fuzzyContains("Hello") should return true.
 The code "Hello, world".fuzzyContains("WORLD") should return true.
 The code "Hello, world".fuzzyContains("Goodbye") should return false.”
 
 */

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
}

assert("Hello, world".fuzzyContains("Hello") == true, "Challenge failed")
assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge failed")
assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge failed")

extension String {
    func fuzzyAgainContains(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

assert("Hello, world".fuzzyAgainContains("Hello") == false, "Challenge failed")
assert("Hello, world".fuzzyAgainContains("WORLD") == true, "Challenge failed")
assert("Hello, world".fuzzyAgainContains("Goodbye") == false, "Challenge failed")


