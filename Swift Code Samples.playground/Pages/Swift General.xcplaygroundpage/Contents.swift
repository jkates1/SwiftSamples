//: Playground - noun: a place where people can play

import Foundation

//In Out
var str = "Initial String Scope"

func mutateString(inout str: String) {
    str = "Hello "
    print(str)
}
//Outside of Funciton Scope
mutateString(&str)

//Sum of Numbers given in variadic argument
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf(42,597,12)

//Average of Numbers given in variable length argument
func averageOf(numbers: Double...) -> Double {
    
    let divisor = Double(numbers.count)
    var numSum:Double = 0
    
    for number in numbers {
        
        numSum += number
        
    }
    return numSum / divisor
}

averageOf(1,3,5,9,22,3)

//Assign Pattern Match Case to Constant
let vegetable = "red pepper"

switch vegetable {
    case "celery":
    print("Add some raisins and make ants on a log")
    case "cucumber", "watercress":
    print("That would make a good tea sandwich")
    //Assigning pattern match to Constant
    case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}

//Return Multiple Values in Tuple
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min,max,sum)
    
}

let statistics = calculateStatistics([5,3,100,3,9])
print(statistics.sum)
print(statistics.2)

//Nested Function
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
    return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(17)


func addTwoNumbers() -> ((Int, Int) -> Int) {
    func addTwo(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
    return addTwo
}

var addedNumbers = addTwoNumbers()

addedNumbers(1,5)

//More Func Returning Func examples for shortening expression
func printTwoLines() -> ((String) -> String) {
    func printWhatISay(sayWhat: String) -> String {
        return "Say What \(sayWhat)"
    }
    return printWhatISay
}

var stringPrinter = printTwoLines()

stringPrinter("..No you say what")


func addTwoNumbersTogether() -> ((Int, Int) -> Int) {
    func addTheseNumbers(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    return addTheseNumbers
}

let addedNums = addTwoNumbersTogether()

addedNumbers(2,23)

//Function taking function as argument

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]

hasAnyMatches(numbers, condition: lessThanTen)


let mappedNumber = numbers.map ({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

//Simple Even number check
func isEvenNumber(number: Int) -> Bool {
    return number % 2 == 0
}

isEvenNumber(25)
isEvenNumber(20)

func multiplyIntegers(numbers: Int...) -> Int {
    
    var product = 1
    
    for number in numbers {
       product *= number
    }
    return product
}

multiplyIntegers(2,3,5,2,5)


