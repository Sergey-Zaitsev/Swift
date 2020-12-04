import UIKit

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

class Queue<T> {
    private var array: [T] = []

    func pop () -> T? {
        guard array.count > 0 else { return nil }
        return array.removeFirst()
    }
    func push (_ element: T) {
        array.append(element)
    }

subscript(elements: Int) -> T? {
    guard array.count > elements else { return nil }
    return array[elements]
    }
    func filter(doFilter: (T) -> Bool)  {
        var newArray = [T]()
        for value in array {
            if doFilter(value) {
                newArray.append(value)
            }
        }
        self.array = newArray
        print(array)
    }
}

let queueArray = Queue<Int>()
queueArray.push(1)
queueArray.push(4)
queueArray.push(8)
queueArray.push(16)
queueArray.push(99)
queueArray.pop()
queueArray.pop()
queueArray[1]
queueArray.filter { $0 % 2 == 0 }



    
