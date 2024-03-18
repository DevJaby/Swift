/*:# 두 정수 사이의 합*/
// 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
// 예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.

func solution(_ a: Int, _ b: Int) -> Int64 {
    guard a == b else {
        let range = a < b ? a...b : b...a
        let sum = Int64(range.reduce(0, +))
        return sum
    }
    return Int64(a)
}
