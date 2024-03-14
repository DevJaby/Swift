// 함수 이름: solution
// 인자: n (64비트 정수형)
// 반환 값: [Int] (각 자리 숫자를 원소로 가지는 배열)

func solution(n: Int64) -> [Int] {

  // 빈 배열 생성
  var numberArray: [Int] = []

  // n의 값을 number 변수에 저장
  var number = n

  // number가 0보다 큰 동안 반복
  while number > 0 {

    // number를 10으로 나눈 나머지 값을 remainder 변수에 저장
    let remainder = number % 10

    // 배열의 끝에 remainder 값을 추가
    numberArray.append(Int(remainder))

    // number를 10으로 나누어 마지막 자릿수 제거
    number /= 10
  }

  // numberArray 배열 반환
  return numberArray
}

// n1 변수에 12345 값 할당
let n1: Int64 = 12345

// solution 함수 실행 결과를 result 변수에 저장
let result = solution(n: n1)

// result 변수 출력
print(result)
