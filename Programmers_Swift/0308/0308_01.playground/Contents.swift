// MARK: 자릿수 더하기
// 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
// 예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.

func solution(_ n: Int) -> Int {
    var answer: Int = 0
    var num = n
    while num > 0 { // num 이 0보다 크면
        answer += num % 10 // num 을 10으로 나눈 나머지를 더한다.
        num /= 10 // num 을 10 으로 나누고 나머지를 버린다. (마지막 자릿수 제거)
  }
  return answer
}

// 예시
let result = solution(10)
print(result)
