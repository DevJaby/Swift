/*:# 자주 쓰이는 함수자*/
import UIKit
//map(_:)
// 배열의 각 요소를 변환하여 새로운 배열을 만들어요.
let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
let doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers)

//filter(_:)
// 조건에 맞는 요소만 포함하는 새로운 배열을 만들어요.
let evenNumbers = numbers.filter { $0 % 2 == 0 }
print(evenNumbers)

//reduce(_:)
// 배열의 모든 요소를 결합해요.
let sum = numbers.reduce(0, +)
print(sum)

//sorted(by:)
// 배열을 정렬해요.
let sortedNumbers = numbers.sorted(by: >)
print(sortedNumbers)

//first(where:)
// 조건에 맞는 첫 번째 요소를 찾아요.
let firstEvenNumber = numbers.first(where: { $0 % 2 == 0 })
print(firstEvenNumber ?? "조건에 만족하는 요소가 없습니다.")

//contain(_:)
// 배열에 특정 요소가 포함되어 있는지 확인해요.
let containsThree = numbers.contains(3)
print(containsThree)

//count
// 조건에 맞는 요소의 개수를 셉니다.
let countOfEvenNumbers = evenNumbers.count
print(countOfEvenNumbers)

//isEmpty
// 배열이 비어 있는지 확인해요.
let isEmpty = numbers.isEmpty
print(isEmpty)

//reversed()
// 배열의 요소를 뒤집어요.
let reversedNumbers = numbers.reversed()
print(reversedNumbers)

//randomElement()
// 배열에서 무작위 요소를 선택해요.
let randomNumbers = numbers.randomElement()
print(randomNumbers!)
