import Foundation

protocol Paintable: PaintDelegate {
    //Type Alias for Example -- Not Real World Usage
    associatedtype Vehicle
    var vehicleType: Vehicle { get }
    var paintColor: String { get }
    var paintFinish: String { get }
    
}

protocol PaintDelegate {
   func didFinishPainting()
   func didCreateVehicle()
    
}

enum VehicleType: String {
    case Car
    case Truck
    case Semi
    case MotorCycle
}

//Conforms to Paintable and PaintDelegate

struct Car: Paintable {

    var vehicleType: VehicleType
    var paintColor: String {
        didSet {
            self.delegate?.didFinishPainting()
        }
    }
    var paintFinish: String
    var description: String {
        return "Car color is \(paintColor) and the finish is \(paintFinish)"
    }
    var delegate: PaintDelegate?

    func didFinishPainting() {
        print("New Paint Job Finished")
    }
    func didCreateVehicle() {
        print("Car Created")
    }
    
}
//Create custom initializer
extension Car {
    
    init(paintColor: String, paintFinish: String) {
        self.paintColor = paintColor
        self.paintFinish = paintFinish
        vehicleType = .Car
        delegate = self
        delegate?.didCreateVehicle()
    }
    
}

var newCar = Car(paintColor: "Blue", paintFinish: "Glossy")
newCar.paintColor = "Red"


//Create New Vehicle
struct Semi: Paintable {
    
    var vehicleType: VehicleType
    var paintColor: String {
        didSet {
            //New color alert the delegate
            delegate?.didFinishPainting()
        }
    }
    var paintFinish: String
    var delegate: PaintDelegate?
    
    func didCreateVehicle() {
        print("Created New Semi")
    }
    func didFinishPainting() {
        print("Semi has been Painted")
    }
}
//Custom Init
extension Semi {
    init(paintColor: String, paintFinish: String) {
        self.paintColor = paintColor
        self.paintFinish = paintFinish
        vehicleType = .Semi
        delegate = self
        delegate?.didCreateVehicle()
    }
}

var newVehicle = Semi(paintColor: "Grey", paintFinish: "Flat")
newVehicle.paintColor = "Black"



//Codibility solution//
public func solution(_ A : inout [Int]) -> Int {
    
    var hashTable = [Int: Bool]()
    
    for (_,v) in A.enumerated() {
        
        if hashTable.removeValue(forKey: v) == nil {
          hashTable[v] = true
        }
    }
    return hashTable.first!.key
}

var testArray = [1,3,1,3,5,7,5,9,11,9,7]

solution(&testArray)

/////////////////////

public func insertionSort(arrayToSort: inout [Int]) {
    for (i,v) in arrayToSort.enumerated() {
        guard i != 0 else { continue }
        var j = i - 1
        var tmp = arrayToSort[i]
        while j >= 0 && arrayToSort[j] > tmp {
            
            arrayToSort[j + 1] = arrayToSort[j]
            j -= 1
        }
        
        arrayToSort[j + 1] = tmp
    }
}

var numms = [11,12,3,5,4,7,9]

insertionSort(arrayToSort: &numms)

