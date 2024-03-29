/*
- 문제 설명
 정수 num이 짝수일 경우 "Even"을 반환하고 홀수인 경우 "Odd"를 반환하는 함수, solution을 완성해주세요.

- 제한 조건
 num은 int 범위의 정수입니다.
 0은 짝수입니다.
 */

func solution(_ num:Int) -> String {
/*
    if num % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}
*/

    num % 2 == 0 ? "Even" : "Odd" // 삼항연산자 사용
}

//실행값 예시
let test1 = solution(3)
print(test1)

let test2 = solution(0)
print(test2)
