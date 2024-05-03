/*:# 두 수의 나눗셈*/

import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    return Int(Double(num1) / Double(num2) * 1000)
}
 
print(solution(7, 3))
