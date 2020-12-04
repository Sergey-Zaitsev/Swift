import UIKit

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

enum CardFillingStation: Error {
    case cardOperationError
    case noСommunication
    case tankCapacityExceeded
    case cardError
}
struct StatusAuto {
    let tankStatus: Double
    let cardBalans: Double

}
struct Buy {
    var buy: Double
}
class CardStatus {
    var tankVolume = 40
    let limitCard = 5000
    let cardIsBlocket = false

    func buyingFuel(buy: StatusAuto) throws {
        guard cardIsBlocket == false else {
            throw CardFillingStation.cardError
        }
        guard buy.tankStatus >= 5 else {
            throw CardFillingStation.tankCapacityExceeded
        }
        guard Int(buy.cardBalans) >= limitCard else {
            throw CardFillingStation.cardOperationError
        }
    }
}
let operation = CardStatus()
do {
    try operation.buyingFuel(buy: .init(tankStatus: 6, cardBalans: 0))
} catch let _ as CardFillingStation {
    print("В баке мало топлива!")
}
do {
    try operation.buyingFuel(buy: .init(tankStatus: 6, cardBalans: 4900))
} catch let error as CardFillingStation {
    print("На карте не достаточно средств!")
}

