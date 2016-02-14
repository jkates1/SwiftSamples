import Foundation


//*****************Array Filtering*****************//
/*  This method creates and returns a new array that contains only the items for which the given function returns true.
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
//Filter and Find all elements that start with Str ing before M (alphabetically)
var filteredString = myFilter(["John","Lisa","Don","Phil","Robert"], predicate: {
    $0 < "m"
})



//*********REDUCING************//
//Reduce is a versatile Array method that executes a function
// once for each element, accumulating the results.

var sum = Array(1...100).reduce(0) { (total, number) in
    total + number
}

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

let strings2 = ["Jeff","Jared","Jimmy","Kevin","Larry"].reduce("") { (name, longName) in
    return name + longName + " "
}
print(strings2)

let strings3 = ["Frank", "Devin", "Mark","jerry"].reduce("") { (name, upperCase) in
    
    return name + upperCase.uppercaseString + " "

}
//Take input array of string digits and return
let digits = ["3","1","4","1"].reduce(0) { (digit, number) in
    if let result = Int("\(String(digit) + number)") {
        return result
    } else {
        return 0
    }
    
}

extension Array {
    func myReduce<T, U>(seed: U, combiner:(U, T) -> U) -> U {
        var current = seed
        for item in self {
            current = combiner(current, item as! T)
        }
        return current
    }
}

let customReduceCall = ["Frank", "Devin", "Mark","jerry"].myReduce("") { (name, upperCase: String) in
    
    return name + upperCase.uppercaseString + " "
}

//***************MAP******************//
//MAP is ran on each element with given closure

let mapArray = [3,2,32,22,15,23,3]
    
mapArray.map { (number: Int) in
    return 3 * number.predecessor()
}

let numberPlusNumberPlus2 = mapArray.map { (number: Int) in
    return number + number.advancedBy(2)
}

let numberX3 = mapArray.map { (number) in
    return String(number * 3)
}
//Return Array Circumference given diameter for each element
let circumferences = mapArray.map { (diameter) in
    return Double(diameter) * M_PI
    
}


///General Examples of Recursion
func sumRecursively(numbers: [Int], _ total: Int = 0) -> Int {
    if let head = numbers.first {
        let tail = Array(numbers.dropFirst())
        return sumRecursively(tail, head + total)
    } else {
        return total
    }
}

let myNumbers = [1,2,3,4,5]
sumRecursively(myNumbers) // 15


let uglyArray = [1,5,3,2,8,10,12,19,29,23]

let newArray = uglyArray.split(1) { (number) in
number < 3
}
print(newArray.description)


