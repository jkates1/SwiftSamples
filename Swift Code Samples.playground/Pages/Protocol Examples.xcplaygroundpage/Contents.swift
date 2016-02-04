import Foundation

protocol Paintable: PaintDelegate {
    
    typealias Vehicle
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

struct Semi: Paintable {
    
    var vehicleType: VehicleType
    var paintColor: String {
        didSet {
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












