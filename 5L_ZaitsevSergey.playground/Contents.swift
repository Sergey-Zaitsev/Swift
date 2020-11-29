import UIKit

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.


enum EngineState {
    case turnedOn, turnedOff
}
enum Transmission {
    case Механическая, Автоматическая, Роботизированная
}
enum Mark {
    case BMW, MB, AUDI, KAMAZ, VOLVO, MAZ, BELAZ
}
protocol Car {
    var isEngineOn: EngineState { get }
    var horsePower: Int { get }
    var isTransmission: Transmission { get }
    var isMark: Mark { get }
    func engineState ()
}
enum typeOfVehicle {
    case commercial
    case notCommercial
}
enum vehicleCategory {
    case А
    case B
    case C
    case D
    case BE
    case CE
    case DE
}
class CarEngine: Car {
    var isEngineOn: EngineState
    var horsePower: Int
    var isMark: Mark
    var isTransmission: Transmission
    
    init(isEngineOn: EngineState, isTransmission: Transmission, isMark: Mark, horsePower: Int) {
        self.isTransmission = isTransmission
        self.isEngineOn = isEngineOn
        self.isMark = isMark
        self.horsePower = horsePower
    }
    func engineState() {
        print("Состояние двигателя - \(isEngineOn)")
    }
}
extension Car {
        func stateEngine () {
            if isEngineOn == .turnedOff {
                print("Для начала движения нужно завести двигатель")
            } else {
                print("Можно начинать движение.")
            }
        }
    }
class CarCategory: Car {
    
    
    var isEngineOn: EngineState
    var horsePower: Int
    var isTransmission: Transmission
    var isMark: Mark
    var typeOfVehicle: typeOfVehicle
    var vehicleCategory: vehicleCategory
    init(isEngineOn: EngineState, isTransmission: Transmission, isMark: Mark, horsePower: Int, typeOfVehicle: typeOfVehicle, vehicleCategory: vehicleCategory) {
        self.isTransmission = isTransmission
        self.isEngineOn = isEngineOn
        self.isMark = isMark
        self.horsePower = horsePower
        self.typeOfVehicle = typeOfVehicle
        self.vehicleCategory = vehicleCategory
    }
    func engineState() {
        if isEngineOn == .turnedOff {
            print("Для начала движения нужно завести двигатель")
        } else {
            print("Можно начинать движение.")
          }
    }
    
    func checkingСategory () {
        switch vehicleCategory {
        case .А, .B, .BE, .C, .CE:
            print("Ваш автомобиль является не грузовым")
        case .D, .DE:
            print("У Вас грузовой автомобиль")
        }
        
    }
}
extension CarCategory: CustomStringConvertible {
    var description : String {
        return "Моя машина \(isMark), категория транспортного средства: \(vehicleCategory)"
    }
}

let t = CarEngine(isEngineOn: .turnedOn, isTransmission: .Автоматическая, isMark: .AUDI, horsePower: 10)
let c = CarCategory(isEngineOn: .turnedOff, isTransmission: .Автоматическая, isMark: .AUDI, horsePower: 200, typeOfVehicle: .commercial, vehicleCategory: .D)
t.engineState()
t.stateEngine()
print(c.description)
