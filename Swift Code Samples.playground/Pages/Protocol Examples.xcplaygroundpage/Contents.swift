import Foundation

protocol Paintable: PaintDelegate {
    
    var paintColor: String { get }
    var paintFinish: String { get }
    
}

protocol PaintDelegate {
   func didFinishPainting()
   func didCreateCar()
    
}

//Conforms to Paintable and PaintDelegate

struct Car: Paintable {
    
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
    init(paintColor: String, paintFinish: String) {
        self.paintColor = paintColor
        self.paintFinish = paintFinish
        delegate = self
        self.delegate?.didCreateCar()
    }
    func didFinishPainting() {
        print("New Paint Job Finished")
    }
    func didCreateCar() {
        print("Car Created")
    }
    
}

var newCar = Car(paintColor: "Blue", paintFinish: "Glossy")
newCar.paintColor = "Red"






