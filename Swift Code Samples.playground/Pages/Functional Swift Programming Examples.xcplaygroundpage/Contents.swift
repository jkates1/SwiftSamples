import Foundation


//*****************Array Filtering*****************//
/*  This method, exposed by Array, creates and returns a new array that contains only the items for which the given function returns true.
*/

var evens = [Int]() // Empty Initialized Global Array 

//Find All Even Numbers in Array

evens = Array(1...10).filter { (number) in
    number % 2 == 0
}

evens = Array(1...100).filter { (number) in
    number > 50
}

//Find Character in Each Element of Array
var stringArray = ["Jeff","Lori","David"]

let filteredArray = stringArray.filter { (string) in
    
string.characters.contains("J")
    
}
//Find String in Each Element of Array
let filteredCharacterArray = stringArray.filter { (string) in

    string.containsString("Lori")
}
//Condensed filter search for String Element containg L
stringArray.filter {
    $0.containsString("L")
}
// Custom Filter Implementation


func myFilter<T>(source: [T], predicate:(T) -> Bool) -> [T] {
    
    var result = [T]()
    for i in source {
        if predicate(i) {
            result.append(i)
        }
    }
    return result
}
//Works the same as Array filter method
evens = myFilter(Array(1...10), predicate: {
    $0 % 2 == 0
})
//Filter and Find all elements that start with String before M (alphabetically)
var filteredString = myFilter(["John","Lisa","Don","Phil","Robert"], predicate: {
    $0 < "m"
})


//*********REDUCING************//
//Reduce is a tremendously versatile Array method that executes a function
// once for each element, accumulating the results.


var evenSum = Array(1...10)
    .filter{ (number) in
    number % 2 == 0 }
    .reduce(0) { (total, number) in
        total + number
    }
print(evenSum)

let maxNumber = Array(1...10).reduce(0) { (total, number) in
    max(total, number)
}
print(maxNumber)

let numbers = Array(1...10).reduce("numbers: ") {(total, number) in
    total + "\(number)"
}
print(numbers)


