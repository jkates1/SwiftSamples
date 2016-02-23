import Foundation


//Basic Closure Simplicity
let circumferenceByDiameter  = { $0 * M_PI }
circumferenceByDiameter(4)

//Add 2 numbers return closure that takes 2 summands arguments

func performOperation (left left: Int, right: Int, operate: (Int, Int) -> Int) -> Int {
    return operate(left,right)
}

let result1 = performOperation(left: 22, right: 23, operate: { $0 * $1 })
let result2 = performOperation(left: 23, right: 21, operate: { $0 % $1 })

print(result1)

//Add LastName Example
func closureExample(lastName: String) -> (firstName: String) -> String {
    
    func addLastName(firstName: String) -> String {
        let fullName = firstName + " Kates"
        return fullName
    }
    
    return addLastName
}

let functionAsArgument = closureExample("Jeremy")

let myName = "FullName: " + functionAsArgument(firstName: "Jeremy")
print(myName)

let listOfFirstNames = ["Jerry", "Chloe", "Linda", "Mike", "Brian"]
//Add Surname to Family of first names
listOfFirstNames.map {
    $0 + " Davidson"
}
//Reverse List of Names Operator used as argument infers meaning for String class implementation
let reverseNames = listOfFirstNames.sort(>)
print(reverseNames)

//Closure Expression
let closureExp = { for i in 1...300 { print(i * i) } }
closureExp()

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

//Closure Reference Semantics
let incrememntBy8 = makeIncrementer(forIncrement: 8)

incrememntBy8()
incrememntBy8()

let alsoIncrementBy8 = incrememntBy8
alsoIncrementBy8()
incrememntBy8()



