/*:# Fountions - 함수*/

/*:`- 특정 작업을 수행하는 코드`
 
 `- Reusability`
 */
/*:## Defining Functions*/
func sayHello() { // Function head { Function body }
    print("hello,Swift")
}

/*:## Calling Functions: Call-site, Caller*/
sayHello()

/*:## Return Values*/
func add() -> Int {
    1 + 2 // Implicit Return: 함수 바디에 리턴문 하나일때는 return 키워드 생략가능
}

let r = add()

if add() == 3 {
    print("three")
}
func printRandomEvenNumber() {
    let rnd = Int.random(in: 1...100)
    
    if !rnd.isMultiple(of: 2) {
        return
    }
    
    print(rnd)
}

printRandomEvenNumber()
  
/*:# Parameters - 파라미터 */

func plus(a: Int, b: Int) -> Int {
    // a = 12 파라미터는 함수 바디에서 사용하는 임시 상수 -> 값을 바꿀수 없다.
    return a + b
}
plus(a: 10, b: 20)

/*:## Default Value*/

func sayHi(to: String = "Stranger") { // "Stranger" 를 기본값으로 설정
    print("Hi, \(to)")
}
// parameter scope, life cycle -> 함수 바디안에서만 사용되고 사라진다. (함수 실행이 끝나면 사라짐)
sayHi(to: "Jaby")
sayHi() // 기본값 출력

/*:# Argument Label*/
func sayHello1(name: String) {
    print("Hello, \(name)")
}

sayHello1(name: "Swift")

func sayHello2(to name: String) {
    print("Hello, \(name)") // 함수 내부 -> parameter name 으로 접근
}

sayHello2(to: "Swift") // 외부 -> argument label 로 접근

func sayHello2(_ name: String) { // argument label _ 로 생략가능
    print("Hello, \(name)")
}
sayHello2("Swift") // 함수에도 없으니까 argument label 없이 호출 가능

