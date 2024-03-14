// MARK: 평균 구하기
// 문제 설명
// 정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.

func solution(_ arr:[Int]) -> Double {
    let sum = arr.reduce(0, +)
    return Double(sum) / Double(arr.count)
}

// 입력 값: 정수를 담고 있는 배열 arr
// 출력 값: 평균 값
//  * 배열 arr 에 있는 모든 정수를 더한다 -> arr 의 정수 갯수로 나눈다.
