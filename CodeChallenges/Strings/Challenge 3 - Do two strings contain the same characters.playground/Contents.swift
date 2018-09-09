//: Playground - noun: a place where people can play

import Cocoa

/*
 
 Challenge 3: Do two strings contain the same characters?
 Difficulty: Easy
 
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 
 Sample input and output
 The strings “abca” and “abca” should return true.
 The strings “abc” and “cba” should return true.
 The strings “ a1 b2 ” and “b1 a2” should return true.
 The strings “abc” and “abca” should return false.
 The strings “abc” and “Abc” should return false.
 The strings “abc” and “cbAa” should return false.

 */
 
func challenge3a(string1: String, string2: String) -> Bool {
    var checkString = string2
    
    for letter in string1 {
        if let index = checkString.index(of: letter) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    
    return checkString.count == 0
}

assert(challenge3a(string1: "abcd", string2: "abcd") == true, "Challenge failed")
assert(challenge3a(string1: "abc", string2: "cba") == true, "Challenge failed")
assert(challenge3a(string1: "a1b2", string2: "b1a2") == true, "Challenge failed")
assert(challenge3a(string1: "abc", string2: "abca") == false, "Challenge failed")
assert(challenge3a(string1: "abc", string2: "Abc") == false, "Challenge failed")
assert(challenge3a(string1: "abc", string2: "cbAa") == false, "Challenge failed")


func challenge3b(string1: String, string2: String) -> Bool {
    let array1 = Array(string1)
    let array2 = Array(string2)
    return array1.sorted() == array2.sorted()
}

assert(challenge3b(string1: "abcd", string2: "abcd") == true, "Challenge failed")
assert(challenge3b(string1: "abc", string2: "cba") == true, "Challenge failed")
assert(challenge3b(string1: "a1b2", string2: "b1a2") == true, "Challenge failed")
assert(challenge3b(string1: "abc", string2: "abca") == false, "Challenge failed")
assert(challenge3b(string1: "abc", string2: "Abc") == false, "Challenge failed")
assert(challenge3b(string1: "abc", string2: "cbAa") == false, "Challenge failed")


