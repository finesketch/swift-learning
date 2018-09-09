//: Playground - noun: a place where people can play

import UIKit

/*
 
 “Challenge 11: Three different letters
 Difficulty: Tricky
 
 Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
 
 Sample input and output
 The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
 The strings “Clamp” and “Crams” would return true, because there are two letter differences.
 The strings “Clamp” and “Grams” would return true, because there are three letter differences.
 The strings “Clamp” and “Grans” would return false, because there are four letter differences.
 The strings “Clamp” and “Clam” would return false, because they are different lengths.
 The strings “clamp” and “maple” should return false. Although they differ by only one letter, the letters that match are in different positions.”
 
 */

func challenge11a(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    
    let firstArray = Array(first)
    let secondArray = Array(second)
    var difference = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            difference += 1
            
            if difference == 4 {
                return false
            }
        }
    }
    
    return true
}

assert(challenge11a(first: "Clamp", second: "Cramp") == true, "Challenge failed")
assert(challenge11a(first: "Clamp", second: "Crams") == true, "Challenge failed")
assert(challenge11a(first: "Clamp", second: "Grams") == true, "Challenge failed")
assert(challenge11a(first: "Clamp", second: "Grans") == false, "Challenge failed")
assert(challenge11a(first: "Clamp", second: "Clam") == false, "Challenge failed")
assert(challenge11a(first: "clamp", second: "maple") == false, "Challenge failed")
