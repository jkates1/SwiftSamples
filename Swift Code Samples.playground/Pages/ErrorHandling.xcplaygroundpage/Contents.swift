
//: Simple Error Handling Example

enum Errors: String, ErrorType {
    
    switch self {
    case NotEven: return "There are no even numbers"
    case NoMatch: return "There are no matches"
    default:
    return "There was an error"
    }
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

