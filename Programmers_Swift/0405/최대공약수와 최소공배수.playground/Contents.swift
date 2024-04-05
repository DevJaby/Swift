/*:# 최대공약수와 최소공배수*/

// 주어진 두 수의 최대공약수와 최소공배수를 반환하는 함수
func solution(_ n: Int, _ m: Int) -> [Int] {
    // 최대공약수 계산
    var gcdValue = gcd(n, m)
    // 최소공배수 계산
    var lcmValue = lcm(n, m, gcdValue)
    // 최대공약수와 최소공배수를 배열에 담아 반환
    return [gcdValue, lcmValue]
}

// 두 수의 최대공약수를 계산하는 함수
func gcd(_ a: Int, _ b: Int) -> Int {
    var num1 = a
    var num2 = b
    
    // 유클리드 호제법을 사용하여 최대공약수 계산
    while num2 != 0 {
        let temp = num1 % num2
        num1 = num2
        num2 = temp
    }
    
    return num1
}

// 두 수의 최소공배수를 계산하는 함수
func lcm(_ a: Int, _ b: Int, _ gcdValue: Int) -> Int {
    // 두 수의 곱을 최대공약수로 나누어 최소공배수 계산
    return (a * b) / gcdValue
}
