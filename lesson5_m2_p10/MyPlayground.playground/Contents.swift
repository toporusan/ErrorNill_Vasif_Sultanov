import Foundation

class Car {
    var color: String = ""
    init(color: String) {
        self.color = color
    }
 
}

var car: Car = Car(color:"red")
print(car.color)

var car2 = car
car2.color = "blue"
print(car.color)

