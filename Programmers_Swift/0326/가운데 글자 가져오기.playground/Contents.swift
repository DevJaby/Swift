/*:# 가운데 글자 가져오기*/

func solution (_ s: String) -> String {
    let length = s.count
    let middleIndex = length / 2
    
    if length % 2 == 0 {
        //짝수인 경우
        return String(s[s.index(s.startIndex, offsetBy: middleIndex - 1)...s.index(s.startIndex, offsetBy: middleIndex)])
    } else {
        //홀수인 경우
        return String(s[s.index(s.startIndex, offsetBy: middleIndex)])
    }
    
}

print(solution("abcde"))


