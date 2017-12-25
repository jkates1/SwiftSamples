
//: Simple Error Handling Example

enum Errors: String, Error {
    
    case NotEven = "No Even Number Found"
    case NoMatch = "There are no matches"
}

func returnOnlyEvens(number: Int) throws -> Int  {
    guard number % 2 == 0 else {
        throw Errors.NotEven
    }
    return number
}

func findStringMatch(word: String) throws  {
    guard word == "Jessie" else {
        throw Errors.NoMatch
    }
    print("Found Match")
}

do {
    try print(returnOnlyEvens(number: 3))
    
} catch {
    print(error)
}

do {
    try print(findStringMatch(word: "Carrie"))
    //bind to error
} catch let matchError {
    print(matchError)
}
do {
    //Match found
    try print(findStringMatch(word: "Jessie"))
}



