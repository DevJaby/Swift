import UIKit

// 1. 할당 연산자
// - A = B

let color = "purple"
print(color) // 출력값: purple

var foodName = "사과"
var fruitName = "포도"
foodName = fruitName
print(foodName)

func getWeight(height: Int) -> Double {
    let weight = (height - 100) * 9 / 10
    return Double(weight)
}


