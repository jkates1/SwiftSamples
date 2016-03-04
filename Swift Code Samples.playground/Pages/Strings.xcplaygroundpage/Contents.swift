
import Foundation

//Are any two strings permutation of another using encoded value

let string1EncodedValues = "Hello".unicodeScalars.map() {
    //each encoded value
    $0
    //Now add the values
    }.reduce(0){ total, value in
        total + value.value
}

let string2EncodedValues = "oellH".unicodeScalars.map() {
    $0
    }.reduce(0) { total, value in
        total + value.value
}

let equalStrings = string1EncodedValues == string2EncodedValues ? true : false


//Sort and compare method of same problem above

let firstString = "Hello"
let secondString = "lloeH"

let equalsStrings = firstString.characters.sort() == secondString.characters.sort() ? true : false


//Palindrome check

let sourceString = "Palindrome"
let possiblePalindrome = "emordnilaP"

let isPalindrome = sourceString == String(possiblePalindrome.characters.reverse())


//Make each first character in word Uppercase 

let normalString = "This is an example string".componentsSeparatedByString(" ")

let headline = normalString.map { (var word: String) -> String in
    
    let firstCharacter = word.removeAtIndex(word.startIndex)
    return "\(String(firstCharacter).uppercaseString)\(word)"
}.joinWithSeparator(" ")

print(headline)

//