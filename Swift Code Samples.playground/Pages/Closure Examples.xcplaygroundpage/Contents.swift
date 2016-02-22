import Foundation


//Basic Closure Simplicity
let circumferenceByDiameter  = { $0 * M_PI }
circumferenceByDiameter(4)

//Add 2 numbers return closure that takes 2 summands arguments
func add2Numbers() -> (num1 : Int, num2: Int) -> Int {
    func numbers2Add(first: Int, second: Int) -> Int {
        return first + second
    }
    return numbers2Add
}

let sum = add2Numbers()
let sumOf2Nums = sum(num1: 32, num2: 12)
print(sumOf2Nums)

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

let listOfFirstNames = ["Jerry", "Jim", "Larry", "Mike", "Brian"]

listOfFirstNames.map {
    
    $0 + " Davidson"
}

