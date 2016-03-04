
//: Simple Error Handling Example

enum Errors: String, ErrorType {
    
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
    try print(returnOnlyEvens(4))
    try findStringMatch("Carrie")
    
} catch {
    print(error)
}

print("found")
