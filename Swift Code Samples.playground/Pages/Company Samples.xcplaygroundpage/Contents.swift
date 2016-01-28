//
//  Code Samples
//
//  Created by Jeremy Kates on 01/12/15.
//  Copyright © 2015 . All rights reserved.
//
import UIKit

let yourCompany = "Your Corporation"
let yourCorpUrl = "http://www.yourcorp.com"

//Reverse a String

//Easy Way

let str = yourCorpUrl
let reversed = String(str.characters.reverse())
print(reversed)

//Not emphasizing performance or using Type method... off the top of my head without digging into abstract string/char library functions (or extending them)
func reverseString() {
    
    let string2Reverse = yourCorpUrl
    var charArray = [Character]()
    var reversedString = ""
    
    for char in string2Reverse.characters {
        charArray.append(char)
    }
    for (var i = charArray.count - 1; i >= 0; i-- ) {
        reversedString.append(charArray[i])
    }
    print(reversedString)
}
reverseString()

/* FizzBuzz implementation Quick and Dirty
If Divisible by 3 & 5 show FizzBuzz.
If Divisible by 3 show Fizz
If Divisble by 5 Show Buzz */

func fizzBuzz() {
    
    for element in 1...100 {
        
        if element % 3 == 0 && element % 5 == 0 {
            print("FizzBuzz")
        }
        else if element % 3 == 0 {
            print("Fizz")
        }
        else if element % 5 == 0 {
            print("Buzz")
        }
        else {
            print(element)
        }
    }
}
fizzBuzz()

//Similar Pattern used in iOS
//Sample Protocol Conformance

protocol DataSource {
    
    var data: [[String]] {get set}
    func numOfRows() -> Int
    func numOfRowColumns(row: [String]) -> Int
    
}

class genClass: DataSource {
    
    var data = [[yourCompany,"Jeremy Kates", "Jim Tester", "Jeff Tester"],["Jefn","Josh","Jared","Jeremy"]]
    
    func numOfRows() -> Int {
        return data.count
    }
    
    func numOfRowColumns(rowColumns: [String]) -> Int {
        return rowColumns.count
    }
    
}

let genericClass = genClass()
print("Number of Rows: \(genericClass.numOfRows())")
for row in genericClass.data {
    for name in row {
        print(name)
    }
    print("Number of columns: \(genericClass.numOfRowColumns(row))")
    print("---------")
}

//TableView Sample

class SampleTableView: UITableView {
    
}

//Generic Fib Sequence Generator Func
//Print Fib Sequence Starting at 1 without handling first few cases in series 0,1...
func enumerateFibs() -> [Int] {
    
    var fibArray = [Int]()
    var leftSummands = 0
    var rightSummands = 1
    var currentSum = 0
    
    while currentSum <= 1000 {
        
        currentSum = leftSummands + rightSummands
        fibArray.append(currentSum)
        leftSummands = rightSummands
        rightSummands = currentSum
        
        
    }
    
    return fibArray
    
}

enumerateFibs()

////



