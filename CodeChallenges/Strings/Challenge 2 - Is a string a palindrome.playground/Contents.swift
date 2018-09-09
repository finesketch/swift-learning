//: Playground - noun: a place where people can play

import UIKit

/*
 
 Challenge 2: Is a string a palindrome?
 Difficulty: Easy
 
 Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
 
 Sample input and output
 The string “rotator” should return true.
 The string “Rats live on no evil star” should return true.
 The string “Never odd or even” should return false; even though the letters are the same in reverse the spaces are in different places.
 The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.”
 
 Hints
 Hint #1: You can reverse strings using their reversed() method.
 
 Hint #2: Two strings compare as equal if they contain the same letters in the same order. They are value types in Swift, so it doesn’t matter how they were created, as long as their values are the same.
 
 Hint #3: You need to ignore case, so consider forcing the string to either lowercase or uppercase before comparing.
 */


func challenge2a(input: String) -> Bool {
    return String(input.reversed()) == input;
}



func challenge2b(input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}


assert(challenge2a(input: "rotator") == true, "Challenge 1a failed")
assert(challenge2a(input: "Rats live on no evil star") == true, "Challenge 1a failed")
assert(challenge2a(input: "Never odd or even") == false, "Challenge 1a failed")
assert(challenge2a(input: "Hello, world") == false, "Challenge 1a failed")


assert(challenge2b(input: "rotator") == true, "Challenge 1a failed")
assert(challenge2b(input: "Rats live on no evil star") == true, "Challenge 1a failed")
assert(challenge2b(input: "Never odd or even") == false, "Challenge 1a failed")
assert(challenge2b(input: "Hello, world") == false, "Challenge 1a failed")
