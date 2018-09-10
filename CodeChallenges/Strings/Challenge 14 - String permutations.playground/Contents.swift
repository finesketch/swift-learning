//: Playground - noun: a place where people can play

import UIKit

/*
 
 “Challenge 14: String permutations
 Difficulty: Taxing
 
 Write a function that prints all possible permutations of a given input string.
 
 Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
 
 Sample input and output
 The string “a” should print “a”.
 The string “ab” should “ab”, “ba”.
 The string “abc” should print “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.
 The string “wombat” should print 720 permutations.”

 “Solution
 This is a recursive function with lots of looping, but the nature of factorials is that the loops get smaller each time. Given the input string “wombat”, the first time the function is called you’ll need to loop from 0 up to 5, calling the recursive function each time.
 
 So, initially you’ll pick “w” as it’s the first letter, and in you go to the recursive function – but this time there are only five letters to loop over, so you choose “o”, and go into the function again, etc.
 
 Eventually you spell out “wombat”, which is the result of choosing the first remaining letter each time. But now that you’ve reached the deepest point of the recursion, you back up a level: when you had “womb” it chose the first letter in the remainder (“at”) to make “wombat”, but now that path has been explored it should choose the second remaining letter (“t”) to make “wombt”, at which point the only remaining letter now is “a” to make “wombta”.
 
 Again the recursion has maxed out, so now it will need to go back one level further: when it was at “wom” the remainder was “bat” so it chose[…]”
 
 “Note: the print("******") and second print(current) call are there to help you see how the function works; they serve no functional purpose.”
 
 */


func challenge14(input: String, current: String = "") {
    let length = input.count
    let strArray = Array(input)
    
    if (length == 0) {
        print(current)
        print("******")
    } else {
        print(current)
        
        for i in 0 ..< length {
            let left = String(strArray[0 ..< i])
            let right = String(strArray[i + 1 ..< length])
            
            challenge14(input: left + right, current: current + String(strArray[i]))
        }
    }
}

challenge14(input: "a")
challenge14(input: "ab")
challenge14(input: "abc")
