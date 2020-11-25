import UIKit
import Foundation

// 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

enum EngineType {
    case Дизель, Бензин
    }
enum Color {
    case Красный, Черный, Белый
}
enum Transmission {
    case Механическая, Автоматическая, Роботизированная
}
enum Mark {
    case BMW, MB, AUDI, KAMAZ, VOLVO
}

class Car {
    var color: Color
    var mark: Mark
    var transmission: Transmission
    var engineType: EngineType
    init(color: Color, mark: Mark, engineType: EngineType, transmission: Transmission) {
        self.color = color
        self.mark = mark
        self.engineType = engineType
        self.transmission = transmission
    }
    func parkingBrake ()  {
        print("Автомобиль на стояночном тормозе!")
    }
}
class SportCar: Car {
    var sportEngineVolume: Int
    init(color: Color, mark: Mark, engineType: EngineType, transmission: Transmission, sportEngineVolume: Int) {
        self.sportEngineVolume = sportEngineVolume
        super.init(color: color, mark: mark, engineType: engineType, transmission: transmission)
    }
}
class TrunkCar: Car {
    var trunkEngineVolume: Int
    var carrying: Int
    init(trunkEngineVolume: Int, carrying: Int, color: Color, mark: Mark, engineType: EngineType, transmission: Transmission) {
        self.trunkEngineVolume = trunkEngineVolume
        self.carrying = carrying
        super.init(color: color, mark: mark, engineType: engineType, transmission: transmission)
    }
}
var car = SportCar(color: .Белый, mark: .BMW, engineType: .Бензин, transmission: .Автоматическая, sportEngineVolume: 200)
var trunk = TrunkCar(trunkEngineVolume: 400, carrying: 10, color: .Красный, mark: .VOLVO, engineType: .Дизель, transmission: .Роботизированная)
car.parkingBrake()



// 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

class Car1 {
    let model: String
    let year: Int
    let trunkSize: Int
    let usedTrunkSize: Int
    let isEngineStart: Bool
    var isWindowOpen: WindowStatus
    let color: Color
    let transmisson: Transmission
    var mileage: Int
    
    init(model: String, year: Int, trunkSize: Int, usedTrunkSize: Int, isEngineStart: Bool, windowStatus: WindowStatus, color: Color, transmisson: Transmission, mileage: Int) {
        self.model = model
        self.year = year
        self.trunkSize = trunkSize
        self.usedTrunkSize = usedTrunkSize
        self.isEngineStart = isEngineStart
        self.isWindowOpen = windowStatus
        self.color = color
        self.transmisson = transmisson
        self.mileage = mileage
    }
    func changeWindowStatus () {
                switch isWindowOpen {
                case .open:
                    self.isWindowOpen = .open
                case .close:
                    self.isWindowOpen = .close
                }
            }
}
class SportCar1: Car1 {
    var sportEngineVolumeCar: Int
    init(model: String, year: Int, trunkSize: Int, usedTrunkSize: Int, isEngineStart: Bool, isWindowOpen: WindowStatus, color: Color, transmisson: Transmission, mileage: Int, sportEngineVolumeCar: Int) {
        self.sportEngineVolumeCar = sportEngineVolumeCar
        super.init(model: model, year: year, trunkSize: trunkSize, usedTrunkSize: usedTrunkSize, isEngineStart: isEngineStart, windowStatus: isWindowOpen, color: color, transmisson: transmisson, mileage: mileage)
    }
}

class TrunkCar1: Car1 {
    var trailerLength: Double
    init(model: String, year: Int, trunkSize: Int, usedTrunkSize: Int, isEngineStart: Bool, isWindowOpen: WindowStatus, color: Color, transmisson: Transmission, mileage: Int, trailerLength: Double) {
        self.trailerLength = trailerLength
        super.init(model: model, year: year, trunkSize: trunkSize, usedTrunkSize: usedTrunkSize, isEngineStart: isEngineStart, windowStatus: isWindowOpen, color: color, transmisson: transmisson, mileage: mileage)
    }
}



// 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

enum EngineStatus {
    case launched
    case stopped
}

enum WindowStatus {
    case open
    case close
}
enum Baggage {
    case unload
    case download
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
}
class BaggageParameters {
    let height: Float
    let long: Float
    let width: Float
    let weight: Float
    init(height: Float, long: Float, width: Float, weight: Float) {
        self.height = height
        self.long = long
        self.width = width
        self.weight = weight
    }
    
   // Рассчитываем объем багажника
    func volumeBaggage() -> Float {
        let volume: Float = self.height * self.long * self.width
    return volume
    }
    func engineStatus() {
        print(EngineStatus.stopped)
    }
    func windowStatus() {
        print(WindowStatus.close)
    }
    
}
var setMaxBaggage: Float = 10000
var volume = BaggageParameters(height: 2, long: 2, width: 2, weight: 2)
if volume.volumeBaggage() >= setMaxBaggage {
    print("Кузов заполнен!")
} else {
    let loadingBaggage: Float = setMaxBaggage - volume.volumeBaggage()
    print("Можно еще загрузить \(loadingBaggage) кг")
}



// 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

class SportCar4: Car {
    var sportEngineVolume: Int
    init(color: Color, mark: Mark, engineType: EngineType, transmission: Transmission, sportEngineVolume: Int) {
        self.sportEngineVolume = sportEngineVolume
        super.init(color: color, mark: mark, engineType: engineType, transmission: transmission)
    }
    
override func parkingBrake() {
    print("Автомобиль поехал! Его цвет \(color), Марка - \(mark)")
}
}
class TrunkCar4: Car {
    var trunkEngineVolume: Int
    var carrying: Int
    init(trunkEngineVolume: Int, carrying: Int, color: Color, mark: Mark, engineType: EngineType, transmission: Transmission) {
        self.trunkEngineVolume = trunkEngineVolume
        self.carrying = carrying
        super.init(color: color, mark: mark, engineType: engineType, transmission: transmission)
    }
    override func parkingBrake() {
        print("Автомобиль поехал! Его марка \(mark), тип трансмиссии - \(transmission)")
    }
}
var SportC = SportCar4(color: .Белый, mark: .AUDI, engineType: .Бензин, transmission: .Автоматическая, sportEngineVolume: 350)
var TrunkC = TrunkCar4(trunkEngineVolume: 450, carrying: 30, color: .Черный, mark: .KAMAZ, engineType: .Дизель, transmission: .Механическая)
SportC.parkingBrake()
TrunkC.parkingBrake()

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

let porche = Car1(model: "Caene", year: 2020, trunkSize: 200, usedTrunkSize: 100, isEngineStart: true, windowStatus: .close, color: .Красный, transmisson: .Автоматическая, mileage: 20)
let bmv = Car1(model: "X6", year: 2019, trunkSize: 300, usedTrunkSize: 120, isEngineStart: true, windowStatus: .open, color: .Черный, transmisson: .Автоматическая, mileage: 20)
porche.changeWindowStatus()
bmv.changeWindowStatus()
porche.mileage=200

// 6. Вывести значения свойств экземпляров в консоль.
// Свойства выводятся в каждом задании.

