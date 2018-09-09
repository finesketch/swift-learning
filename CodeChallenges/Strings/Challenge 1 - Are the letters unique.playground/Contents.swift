//: Playground - noun: a place where people can play

import UIKit

/*

 “Difficulty: Easy
 
 Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
 
 Sample input and output
 The string “No duplicates” should return true.
 The string “abcdefghijklmnopqrstuvwxyz” should return true.
 The string “AaBbCc” should return true because the challenge is case-sensitive.
 The string “Hello, world” should return false because of the double Ls and double Os.
 For this initial challenge I’ll write some test cases for you, so that you have something to use in the future. These four assert() statements should all evaluate to true, and therefore not trigger an error:”
 
 
*/

func challenge1a(input: String) -> Bool {
    var usedLetters = [Character]();
    
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
    
    return true
}

func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}

assert(challenge1a(input: "No duplicates") == true, "Challenge 1a failed")
assert(challenge1a(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1a failed")
assert(challenge1a(input: "AaBbCc") == true, "Challenge 1a failed")
assert(challenge1a(input: "Hello, world") == false, "Challenge 1a failed")

assert(challenge1b(input: "No duplicates") == true, "Challenge 1b failed")
assert(challenge1b(input: "abcdefghijklmnopqrstuvwxyz1234567890") == true, "Challenge 1b failed")
assert(challenge1b(input: "AaBbCc") == true, "Challenge 1b failed")
assert(challenge1b(input: "Hello, world") == false, "Challenge 1b failed")
