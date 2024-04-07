import Foundation

func solution(_ n: Int) -> Int {
    // 1. 주어진 자연수 n을 3진법으로 변환
    var ternary = [Int]()
    var number = n
    while number > 0 {
        ternary.append(number % 3)
        number /= 3
    }
    
    // 2. 변환된 3진법 수를 앞뒤로 뒤집기
    ternary.reverse()
    
    // 3. 뒤집은 3진법 수를 다시 10진법으로 변환
    var decimal = 0
    for (index, digit) in ternary.enumerated() {
        decimal += digit * Int(pow(3.0, Double(index)))
    }
    
    // 4. 변환된 10진법 수 반환
    return decimal
}
