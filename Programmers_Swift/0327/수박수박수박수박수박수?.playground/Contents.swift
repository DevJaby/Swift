/*:# 수박수박수박수박수박수? */

func solution(_ n: Int) -> String {
    //출력 문자열 변수 선언
    var output = ""
    
    //n이 홀수면 "수", 짝수면 "박"
    for number in 1...n {
        if number % 2 == 1 {
            output += "수"
        } else {
            output += "박"
        }
    }
    
    return output
}
