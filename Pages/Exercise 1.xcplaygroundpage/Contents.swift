import UIKit

// В заданном массиве строк, найти строки, начинающиеся с числа. Каждое число умножить на 2, преобразовать в строку вида "число * 2 = результат", вывести через print.

["123 hello", "other", "no name 1111", "custom number", "111", "", "345 and 1112"]

let array = ["123 hello", "other", "no name 1111", "custom number", "111", "", "345 and 1112"]



for str in array {
    if let firstString = array.first(where: { str in
        <#code#>
    }) {
        let components = firstString.components(separatedBy: " ")
        if let numberString = components.first, let number = Int(numberString) {
            
        }

        }
    }




