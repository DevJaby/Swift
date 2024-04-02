/*:# 문자열 다루기 기본*/
func solution(_ s: String) -> Bool {
    // 문자열의 길이가 4 또는 6인지 확인
    guard s.count == 4 || s.count == 6 else {
        return false
    }
    
    // 문자열이 숫자로만 구성되어 있는지 확인
    for char in s {
        if let _ = Int(String(char)) {
            continue
        } else {
            return false
        }
    }
    
    return true
}
