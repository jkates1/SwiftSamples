import Foundation

func closureExample(name: String) -> () -> String {
    
    func addLastName() -> String {
        let fullName = name + " Kates"
        return fullName
    }
    
    return addLastName
}

let functionArg = closureExample("Jeremy")

let myName = "FullName: " + functionArg()
print(myName)
