//: Playground - noun: a place where people can play

import Cocoa

/*
 
 “Challenge 7: Condense whitespace
 Difficulty: Easy
 
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 
 Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
 
 The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 The string “[space][space][space][space]a” should return “[space]a”.
 The string “abc” should return “abc”.”

 */

func challenge7a(input: String) -> String {
    var seenSpace = false
    var returnValue = ""
    
    for letter in input {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        
        returnValue.append(letter)
    }
    
    return returnValue
}

assert(challenge7a(input: "a   b   c") == "a b c", "Challenge failed")
assert(challenge7a(input: "    a") == " a", "Challenge failed")
assert(challenge7a(input: "abc") == "abc", "Challenge failed")


func challenge7b(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

assert(challenge7b(input: "a   b   c") == "a b c", "Challenge failed")
assert(challenge7b(input: "    a") == " a", "Challenge failed")
assert(challenge7b(input: "abc") == "abc", "Challenge failed")




