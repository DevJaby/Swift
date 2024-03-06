// MARK: Arithmetic Operators 산술연산자

let a = 12
let b = 34

// Division : 나누기

a / b
b / a

let c = Double(a)
let d = Double(b)

c / d
d / c

// Remainder Operator (Modulo Operator) : 나머지 연산자

a % b

//c % d 실수연산은 지원하지않음
c.truncatingRemainder(dividingBy: d)
