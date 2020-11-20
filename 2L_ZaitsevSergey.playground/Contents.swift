import UIKit

// 1. Написать функцию, которая определяет, четное число или нет.
func evenORodd (value: Int) {
    let n1 = value, n2 = n1%2
    n2 == 0 ? print("Четное") : print("Нечетное")
}
evenORodd(value: 7)

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func remains(value: Int) {
    let x1 = value, x2 = x1%3
    x2 == 0 ? print("Делится") : print("Не делится")
}
remains(value: 9)

// 3. Создать возрастающий массив из 100 чисел.
var array = [Int]()
var i = 0
while i<100 {
    array.append(i+1)
    i += 1
}
print(array)

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
let c = array.filter {$0%2 != 0 && $0%3 != 0}
print(c)

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
// Нашел информацию о типе Decimal и решил его использовать
func fibonacciNumbers (n: Int) -> (Decimal) {
    if (n<3) {
        return 1
    } else {
        var fn1 : Decimal = 1, fn2 : Decimal = 1, fn:Decimal
        for _ in 3...n {
            fn = fn1+fn2
            fn1 = fn2
            fn2 = fn
        }
        return fn2
    }
}
var fibonacciArray = [Decimal]()
fibonacciArray.append(0)
var n  = 100
for i in 1...n {
    fibonacciArray.append(fibonacciNumbers(n: i))
}
print(fibonacciArray)

// 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

func sieveEratosthenes (number: Int) -> Bool {
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}
func sieveEratosthenesArray () -> [Int] {
    var results = [Int]()
    var p = 2
    while results.count < 100 {
        if sieveEratosthenes(number: p) {
            results.append(p)
        }
        p += 1
    }
    return results
}
print (sieveEratosthenesArray())
