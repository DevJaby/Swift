let number: Int = 10
let pi: Double = 3.14
let greeting: String = "Hello, world!"
let isLoggedIn: Bool = true

var age = 20
age = 21

let name = "John"
//name = "Jane" // 에러 발생

var numbers: [Int] = [1, 2, 3, 4, 5]
numbers.append(6)

var person: [String: String] = ["name": "John", "age": "20"]
person["age"] = "21"

if age >= 21 {
    print("You can drink alcohol.")
} else {
    print("You cannot drink alcohol.")
}

for i in 1...5 {
    print(i)
}

var count = 0
while count < 10 {
    count += 1
    print(count)
}
  
//스위프트 함수 정의와 호출하기
func sayHello() {
    print("Hello")
}
sayHello()

func add(x: Int, y: Int) -> Int {
    return (x + y)
}
add(x: 10, y: 20)
          
// 내부 매개변수 이름, 외부 매개변수 이름
func add(first x: Int, second y: Int) -> Int {
    return (x + y) // 함수 내부에서 내부 매개변수명 사용
}
add(first: 10, second: 20) // 호출할 때 외부 매개변수명 사용


// _ 외부매개변수명 생략한다는 의미
func add(_ x: Int, with y: Int) -> Int {
    return (x + y)
}
print(add(10, with: 20))
print(type(of: add(x: 10, y: 20)))
