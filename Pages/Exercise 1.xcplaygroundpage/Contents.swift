import UIKit

// В заданном массиве строк, найти строки, начинающиеся с числа. Каждое число умножить на 2, преобразовать в строку вида "число * 2 = результат", вывести через print.

["123 hello", "other", "no name 1111", "custom number", "111", "", "345 and 1112"]

let array = ["123 hello", "other", "no name 1111", "custom number", "111", "", "345 and 1112"]
array
    .map {$0.components(separatedBy: .whitespacesAndNewlines)[0]}
    .compactMap{Int($0)}
    .map{print("\($0) * 2 = \(($0) * 2)")}




