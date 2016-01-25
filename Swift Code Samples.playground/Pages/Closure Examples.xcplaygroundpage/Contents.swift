import Foundation

func closureExample(name: String) -> () -> String {
    
    func addLastName() -> String {
        let fullName = name + " Johnson"
        return fullName
    }
    
    return addLastName
}

let functionArg = closureExample("Jeremy")

functionArg()



