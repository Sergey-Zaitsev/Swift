import UIKit

// 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

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
struct SportCar {
    let color: Color
    let mark: Mark
    let engineType: EngineType
    let engineVolume: Int
    let transmission: Transmission
}

struct TrunkCar {
    let color: Color
    let mark: Mark
    let engineType: EngineType
    let engineVolume: Int
    let carrying: Int
}
print(TrunkCar.init(color: .Белый, mark: .BMW, engineType: .Бензин, engineVolume: 123, carrying: 123))

// 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
struct SportCar1 {
    let model: String
    let year: Int
    let trunkSize: Int
    let usedTrunkSize: Int
    let isEngineStart: Bool
    let isWindowOpen: Bool
    let color: UIColor
    let transmisson: Transmission
    let mileage: Int
}

struct TrunkCar1 {
    let model: String
    let year: Int
    let trunkSize: Int
    let usedTrunkSize: Int
    let isEngineStart: Bool
    let isWindowOpen: Bool
    let color: UIColor
    let transmisson: Transmission
    let mileage: Int
}

// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

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
struct BaggageParameters {
    let height: Float
    let long: Float
    let width: Float
    let Weight: Float
   // Рассчитываем объем багажника
    func volumeBaggage() -> Float {
        let volume: Float = self.height * self.long * self.width
    return volume
    }
}

var volume = BaggageParameters(height: 2, long: 2, width: 2, Weight: 2)
volume.volumeBaggage()

// 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
struct TrunkCapacity {
    var capacity: Int
    func capasityMax () {
        print("Максимальная вместимость машины \(capacity) М^3")
    }
    mutating func setCapacity (loading: Int) {
        self.capacity = loading
    }
}
var cap = TrunkCapacity(capacity: 10000)
cap.capasityMax()
cap.capacity
cap.setCapacity(loading: 5000)
print("Фактически загружено \(cap.capacity) M^3")

// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

struct SportCar2 {
    let model: String
    let year: Int
    let trunkSize: Int
    let usedTrunkSize: Int
    let transmisson: String
    let mileage: Int

    init(model: String, year: Int, transmisson: String, trunkSize: Int, mileage: Int, usedTrunkSize: Int) {
        self.model = model
        self.year = year
        self.trunkSize = trunkSize
        self.usedTrunkSize = usedTrunkSize
        self.transmisson = transmisson
        self.mileage = mileage
    }
}

struct TrunkCar2 {
    let model: String
    let year: Int
    let trunkSize: Int
    let usedTrunkSize: Int
    let transmisson: String
    
    init(model: String, year: Int, transmisson: String, trunkSize: Int, usedTrunkSize: Int) {
        self.model = model
        self.year = year
        self.transmisson = transmisson
        self.trunkSize = trunkSize
        self.usedTrunkSize = usedTrunkSize
    }
}
// 6. Вывести значения свойств экземпляров в консоль.
let getSportCar2 = SportCar2(model: "BMV", year: 2020, transmisson: "Dizel", trunkSize: 500, mileage: 5000, usedTrunkSize: 100)
print(getSportCar2.model,getSportCar2.year)
let getTrunkCar2 = TrunkCar2(model: "Volvo", year: 2019, transmisson: "Dizel", trunkSize: 200, usedTrunkSize: 40)
print(getTrunkCar2.model,getTrunkCar2.year)
