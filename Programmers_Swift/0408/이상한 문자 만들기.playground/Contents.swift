/*:# 이상한 문자 만들기*/
func solution(_ s: String) -> String {
    var result = ""
    var index = 0
    
    for char in s {
        if char.isLetter {
            // 짝수번째 문자인 경우 대문자로 변환
            if index % 2 == 0 {
                result.append(char.uppercased())
            }
            // 홀수번째 문자인 경우 소문자로 변환
            else {
                result.append(char.lowercased())
            }
            index += 1
        } else {
            // 공백인 경우 그대로 추가
            result.append(char)
            // 단어가 바뀌므로 인덱스 초기화
            index = 0
        }
    }
    
    return result
}
