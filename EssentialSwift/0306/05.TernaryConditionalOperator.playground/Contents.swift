// MARK: Ternary Conditional Operator 조건 연산자 (삼항 연산자)

// 조건 ? 표현1 : 표현2

let hour = 12

hour < 12 ? "오전" : "오후"
if hour < 12 {
    "오전"
} else {
    "오후"
}

hour < 12 ? 0 : 1 // 다른 타입으로도 가능

hour < 12 ? 1234 : "오후" // # 표현은 같은 타입이어야 한다.



