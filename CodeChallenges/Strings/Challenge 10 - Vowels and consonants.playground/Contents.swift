//: Playground - noun: a place where people can play

import Cocoa

/*
 
 “Challenge 10: Vowels and consonants
 Difficulty: Tricky
 
 Given a string in English, return a tuple containing the number of vowels and consonants.
 
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
 
 Sample input and output
 The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 The input “Mississippi” should return 4 vowels and 7 consonants.”
 
 */


func challenge10a(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        
        if stringLetter.rangeOfCharacter(from: vowels) != nil {
            vowelCount += 1
        } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
            consonantCount += 1
        }
    }
    
    return (vowelCount, consonantCount)
}

assert(challenge10a(input: "Swift Coding Challenges") == (6, 15), "Challenge failed")
assert(challenge10a(input: "Mississippi") == (4, 7), "Challenge failed")


func challenge10b(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        
        if vowels.contains(stringLetter) {
            vowelCount += 1
        } else if consonants.contains(stringLetter) {
            consonantCount += 1
        }
    }
    
    return (vowelCount, consonantCount)
}

assert(challenge10b(input: "Swift Coding Challenges") == (6, 15), "Challenge failed")
assert(challenge10b(input: "Mississippi") == (4, 7), "Challenge failed")


func challenge10c(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        if vowels.contains(letter) {
            vowelCount += 1
        } else if consonants.contains(letter) {
            consonantCount += 1
        }
    }
    
    return (vowelCount, consonantCount)
}

assert(challenge10c(input: "Swift Coding Challenges") == (6, 15), "Challenge failed")
assert(challenge10c(input: "Mississippi") == (4, 7), "Challenge failed")



