/*:# 약수의 개수와 덧셈*/
import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    // left부터 right 까지 모든 수 반복
    for num in left...right {
        
        //약수의 개수 세는 함수 사용
        if countDivisors(num) % 2 == 0 {
            result += num // 짝수면 더하기
        } else {
            result -= num // 홀수면 빼기
        }
        
    }
    
    return result
}
// 약수의 개수를 세는 함수
func countDivisors(_ n: Int) -> Int {
    var count = 0
    
    for i in 1...n {
        if n % i == 0 {
            count += 1
        }
    }
    
    return count
}

