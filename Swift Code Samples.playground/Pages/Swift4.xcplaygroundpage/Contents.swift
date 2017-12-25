//: [Previous](@previous)

import Foundation

//Dirty no use of standard library builtin function
func isPalindrome(str1: String, str2: String) -> Bool {
    
    //If not the same length short-ciruit
    guard str1.count == str2.count else { return  false }
    
    var str1Index = str1.startIndex
    var str2Index = str2.index(before: str2.endIndex)
    for c in str1 {
        //Can't go past startIndex on the reverse str2
        guard str2Index != str2.startIndex else { return true}
        if str1[str1Index] == str2[str2Index] {
            str1Index = str1.index(after: str1Index)
            str2Index = str2.index(before: str2Index)
            continue
        } else {
            return false
        }
    }
    return true
}

//Quick & Elegant
func checkPalindrome(str: String, str2: String) -> Bool {
    let reversedString = String(str2.reversed())
    guard str == reversedString else {
        return false
    }
    return true
}

isPalindrome(str1: "A nut for a jar of tuna", str2: "anut fo raj a rof tun A")
isPalindrome(str1: "A nut for a jar of tuna", str2: "anut fo raj a rof tun A")
checkPalindrome(str: "Hello", str2: "olles")
