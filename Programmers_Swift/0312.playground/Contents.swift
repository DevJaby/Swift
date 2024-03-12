func solution(_ n:Int64) -> [Int] {
    var numberArray: [Int] = []
    var number = n
    while number > 0 {
        let remainder = number % 10 // 나머지
        numberArray.append(Int(remainder)) // 배열의 끝에 remainder 를 넣는다.
        number /= 10 // 마지막 자릿수 빼기 반복
    }
    return numberArray
}

let n: Int64 = 12345
let result = solution(n)
print(result)
