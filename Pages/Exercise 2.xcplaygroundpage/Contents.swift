//: [Previous](@previous)

import Foundation

// Составить словарь для цены продуктов в магазине. Ключ - имя продукта. Значение - цена в Double. Сделать массив из имен продуктов. Пройтись по этим продуктом и посчитать суммарную цену. Сформировать и вывести через print чек с указанием продукта и его цены и количества.

// Составить словарь для цены продуктов в магазине. Ключ - имя продукта. Значение - цена в Double
let productsDictionary: [String:Double] = ["milk" : 100.00, "eggs" : 75.00, "bread" : 155.50, "cheese" : 1430.00, "chocolate" : 1070.00, "ice cream" : 1720.00]

// Сделать массив из имен продуктов
let productsArray = Array(productsDictionary.keys.map { "\($0)" })

// Пройтись по этим продуктом и посчитать суммарную цену.
let priceArray = Array(productsDictionary.values.map { ($0) })
var totalCost = 0
for product in productsArray {
    if let price = productsDictionary[product] {
        totalCost += Int(price)
    }
}

// Сформировать и вывести через print чек с указанием продукта и его цены и количества
func calculateCost(product: String, quantity: Double) -> Double {
    if let price = productsDictionary[product] {
        return price * quantity
    } else {
        return 0
    }
}
for product in productsArray {
    let quantity = Int.random(in: 0..<6)
    let cost = calculateCost(product: product, quantity: Double(quantity))
    print("\(product) - Price: \(productsDictionary[product]!), Quantity: \(quantity), Sum: \(cost)")
    totalCost += Int(cost)
}
print("Общая сумма чека: \(totalCost)")
