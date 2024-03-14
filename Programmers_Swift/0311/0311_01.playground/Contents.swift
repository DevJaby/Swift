// 함수 solution은 정수 x와 자연수 n을 입력 받아, x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다. 다음 제한 조건을 보고, 조건을 만족하는 함수, solution을 완성해주세요.

//입력값: 정수x 자연수n
//출력값: x부터 x씩 증가하는 숫자들 n개의 리스트
func solution(_ x:Int, _ n:Int) -> [Int] {
    var result: [Int] = [] // 빈 리스트 선언
    
    for i in 1...n { // 1부터 n까지 반복
        result.append(x + (i - 1) * x) // 요소 추가 메서드
    }
    
    return result
}

let result = solution(2, 5)
print(result)
