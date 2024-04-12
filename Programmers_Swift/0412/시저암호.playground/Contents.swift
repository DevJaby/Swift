/*:# 시저암호*/
/*
 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 예를 들어 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다. "z"는 1만큼 밀면 "a"가 됩니다. 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
 */
func solution(_ s: String, _ n: Int) -> String {
    return String(s.map { char in
        switch char {
        case "A"..."Z":
            let shiftedAscii = (Int(char.asciiValue!) - Int(Character("A").asciiValue!) + n) % 26 + Int(Character("A").asciiValue!)
            return Character(UnicodeScalar(shiftedAscii)!)
        case "a"..."z":
            let shiftedAscii = (Int(char.asciiValue!) - Int(Character("a").asciiValue!) + n) % 26 + Int(Character("a").asciiValue!)
            return Character(UnicodeScalar(shiftedAscii)!)
        default:
            return char
        }
    })
}
