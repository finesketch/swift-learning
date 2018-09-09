//: Playground - noun: a place where people can play

import Cocoa

/*
 
 “Challenge 9: Find pangrams
 Difficulty: Tricky
 
 Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
 
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 
 Sample input and output
 The string “The quick brown fox jumps over the lazy dog” should return true.
 The string “The quick brown fox jumped over the lazy dog” should return false, because it’s missing the S.”
 
 */


func challenge9(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}

assert(challenge9(input: "The quick brown fox jumps over the lazy dog") == true, "Challenge failed")
assert(challenge9(input: "The quick brown fox jumped over the lazy dog") == true, "Challenge failed")

