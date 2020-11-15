// 1. Решить квадратное уравнение ax2 + bx + c = 0.

import UIKit

let a : Float = 3
let b : Float = 16
let c : Float = 9

// Вычисляем дискрименант
let D = (b*b)-Float(4 * a * c)

if D > 0 {
    let x1 = (-b + sqrt(D)) / (2 * a)
    let x2 = (-b - sqrt(D)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if D == 0 {
    let x1 = (-b + sqrt(D)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Данное уравнение не имеет решения")
}
//-----------------------------------------------------
// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let A = 12 //Введите длинну первого катета
let B = 15 //Введите длинну второго катета

// Рассчитаем длинну гипотенузы
let hypotenuse = sqrt(Double(a * a + b * b))
let hypotenuseInt = Int(hypotenuse)
print("Длинна гипотенузы \(hypotenuseInt)")
// Находим периметр треугольника
let perimeter = A + B + Int(hypotenuse)
print("Периметр треугольника \(perimeter)")
// Находим площадь прямоугольного треугольника
let s = (a * b)/2
print("Площадь треугольника \(s)")
//-----------------------------------------------------
//3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
var Deposit : Double = 10.0 // сумму вклада
var Years = 1
let Percent : Double = 10.0 // годовой процент
while Years <= 5 {
    let PercentOne = Deposit / 100.0
    let Income = PercentOne * Percent
    Deposit = Deposit + Income
    Years += 1
}
print("Сумма вклада через 5 лет будет составлять \(String(format: "%.3f", Deposit))")

