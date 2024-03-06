/*
 # 나머지 구하기
 정수 num1, num2가 매개변수로 주어질 때, num1을 num2로 나눈 나머지를 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation
// 입력값: 정수 num1, num2
// 출력값: num1을 num2로 나눈 나머지 -> % 연산자
func solution(_ num1: Int, _ num2: Int) -> Int {
  return num1 % num2
}

// 테스트 코드

let test1 = solution(10, 3)
print(test1) // 결과: 1

let test2 = solution(12, 4)
print(test2) // 결과: 0

/*
 코드 설명:

 1. import Foundation: Foundation 프레임워크를 가져옵니다. (필요하지 않은 경우 제거 가능)
 2. func solution(_ num1: Int, _ num2: Int) -> Int: solution이라는 함수를 정의합니다.
 - 두 개의 Int 타입 매개변수 (num1, num2)를 받습니다.
 - Int 타입 값을 반환합니다.
 3. return num1 % num2: 두 수의 나머지를 반환합니다.
 4. 테스트 코드:
 - test1: solution 함수를 10과 3으로 호출하고 결과를 변수 test1에 저장합니다.
 - print(test1): test1에 저장된 값을 출력합니다.
 */
