//
//  main.swift
//  GrammerMaster
//
//  Created by 권순욱 on 3/17/25.
//

import Foundation

// MARK: - 1번
// 1-1
let closure: (Int, Int) -> String = {
    "두 수의 합은 \($0 + $1)입니다."
}

print("1-1. \(closure(1, 2))") // 1-1. 두 수의 합은 3입니다.


// 1-2
let sum: (Int, Int) -> String = closure


// 1-3
print("1-3. \(sum(1, 2))") // 1-3. 두 수의 합은 3입니다.


// 1-4
func calculate(closure: (Int, Int) -> String) {
    print("1-4. \(closure(1, 2))")
}

calculate(closure: sum) // 1-4. 두 수의 합은 3입니다.


// MARK: - 2번
// 2-1
let numbers = [1, 2, 3, 4, 5]
var result = [String]()

result = numbers.map { String($0) }

print("2-1. \(result)") // 2-1. ["1", "2", "3", "4", "5"]


// 2-2
let input: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let output: [String] = input.filter { $0 % 2 == 0 }.map { String($0) }

print("2-2. \(output)") // 2-2. ["2", "4", "6", "8", "10"]


// 2-3
func myMap(_ numbers: [Int], closure: (Int) -> String) -> [String] {
    return numbers.map { closure($0) }
}

let anotherResult = myMap([1, 2, 3, 4, 5]) { String($0) }

print("2-3. \(anotherResult)") // 2-3. ["1", "2", "3", "4", "5"]


// MARK: - 3번
// 3-1
func a(numbers: [Int]) -> [Int] {
    var results: [Int] = []
    for (index, number) in numbers.enumerated() {
        if index % 2 == 1 { continue }
        results.append(number)
    }
    return results
}

print("3-1. \(a(numbers: [1, 2, 3, 4, 5]))") // 3-1. [1, 3, 5]


// 3-2
func b(texts: [String]) -> [String] {
    var results: [String] = []
    for (index, text) in texts.enumerated() {
        if index % 2 == 1 { continue }
        results.append(text)
    }
    return results
}

print("3-2. \(b(texts: ["가", "나", "다", "라", "마"]))") // 3-2. ["가", "다", "마"]


// 3-3
func c<T>(elements: [T]) -> [T] {
    var results: [T] = []
    for (index, element) in elements.enumerated() {
        if index % 2 == 1 { continue }
        results.append(element)
    }
    return results
}


// 3-4
print("3-4. \(c(elements: [1, 2, 3, 4, 5]))") // 3-4. [1, 3, 5]
print("3-4. \(c(elements: ["가", "나", "다", "라", "마"]))") // 3-4. ["가", "다", "마"]


// 3-5: 문제 변경(기존)
//protocol Numbers {}
//
//func d<T: Numbers>(elements: [T]) -> [T] {
//    var results: [T] = []
//    for (index, element) in elements.enumerated() {
//        if index % 2 == 1 { continue }
//        results.append(element)
//    }
//    return results
//}
//
//extension Int: Numbers {}
//extension String: Numbers {}
//
//print("3-5. \(d(elements: [1, 2, 3, 4, 5]))") // 3-5. [1, 3, 5]
//print("3-5. \(d(elements: ["가", "나", "다", "라", "마"]))") // 3-5. ["가", "다", "마"]

// 3-5
// 문제 변경: protocol Numbers -> Numeric
func d<T: Numeric>(elements: [T]) -> [T] {
    var results: [T] = []
    for (index, element) in elements.enumerated() {
        if index % 2 == 1 { continue }
        results.append(element)
    }
    return results
}

print("3-5. \(d(elements: [1, 2, 3, 4, 5]))") // 3-5. [1, 3, 5]
print("3-5. \(d(elements: [1.0, 2.0, 3.0, 4.0, 5.0]))") // 3-5. [1.0, 3.0, 5.0]


// MARK: - 4번
// 4-1
let car = Car(brand: "Hyundai", model: "Genesis", year: "2025", engine: .gasoline)

print("4-1. brand: \(car.brand), model: \(car.model), year: \(car.year), engine: \(car.engine)")
// 4-1. brand: Hyundai, model: Genesis, year: 2025, engine: gasoline

car.drive()
car.stop()
car.charge()
car.refuel()


// 4-2
let electricCar = ElectricCar(brand: "Tesla", model: "Model Y", year: "2025")

print("4-2. brand: \(electricCar.brand), model: \(electricCar.model), year: \(electricCar.year), engine: \(electricCar.engine)")
// 4-2. brand: Tesla, model: Model Y, year: 2025, engine: electric

electricCar.drive()
electricCar.stop()
electricCar.charge()
electricCar.refuel()


// 4-3, 4-4
let hybridCar = HybridCar(brand: "Toyota", model: "Prius", year: "2025")

print("4-3. brand: \(hybridCar.brand), model: \(hybridCar.model), year: \(hybridCar.year), engine: \(hybridCar.engine)")
// 4-3. brand: Toyota, model: Prius, year: 2025, engine: hydrogen

hybridCar.drive()
hybridCar.stop()
hybridCar.charge()
hybridCar.refuel()

hybridCar.switchEngine(to: .electric)


// 4-5
// 상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이

// 프로토콜 채택을 통해서 기능을 추가할 경우 실제 구현을 매번 다시 해줘야 하나,
// 상속을 사용하여 기능을 추가할 경우 다시 구현하지 않아도 기능 자체를 상속해서 바로 쓸 수 있고, 부가적인 기능도 더 넣을 수 있음.

// 그러나, 상속을 이용하면 불필요한 기능까지 같이 상속되는 단점이 있음. 여기서도 ElectricCar에는 refuel()이 불필요해서,
// 없애고 싶었으나 없앨 방법을 찾지 못함.

// 프로토콜로 할 경우, refuel()과 charge()를 통합한 메서드 1개만 프로토콜에서 정의하고, 실제 구현 시에는 각각 다르게 하거나,
// 아니면 프로토콜을 refuelable, chargeable을 각각 만들고, 각각의 클래스에서 각각 채택을 해서 구현할 수 있음.
