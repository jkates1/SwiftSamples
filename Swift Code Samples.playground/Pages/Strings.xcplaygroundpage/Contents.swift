
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

let equalsStrings = firstString.characters.sorted() == secondString.characters.sorted() ? true : false

//Make each first character in word Uppercase 

let normalString = "This is an example string".components(separatedBy: " ")

let headline = normalString.map { (word: String) -> String in
    var currentWord = word
    //Assign first character of each word and remove old one
    let firstCharacter = currentWord.remove(at: currentWord.startIndex)
    //Return whole word with new uppercase first character
    return "\(String(firstCharacter).uppercased())\(currentWord)"
    
    }.joined(separator: " ")

print(headline)

//
