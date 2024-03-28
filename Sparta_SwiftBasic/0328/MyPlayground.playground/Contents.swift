//func sayHello(name: String) {
//    
//    
//}
//
//
//(String) -> () //(String) -> Void
//
//
//
//// 1. add 라는 변수에 두개의 숫자를 받고, 두개의 숫자를 더한 결과를 반환하는 클로저를 저장해보자.
//func add(_ num1: Int, _ num2: Int) -> Int {
//    return num1 + num2
//}
//// 변수로 저장해야됨.
//var add = { (first: Int, second: Int) -> Int in
//    return first + second
//}
//
//// 2. (Int, Int) -> Int
//
//add(1, 2)
//
//
// 고차함수 : 함수의 파라미터로 함수 넣기
func add(first: Int, second: Int, comletionHandler: (Int) -> Void) {
    
    let result = first + second
    
    comletionHandler(result)
    
}

add(first: 1, second: 2, comletionHandler: {
    (number: Int) -> Void in
    print("결과는 \(number)입니다.")
})

//$0 (생략한 첫번째 파라미터)
