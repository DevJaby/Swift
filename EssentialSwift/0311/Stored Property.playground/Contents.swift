class Person2 {
    let name: String = "Jaby"
    var age: Int = 30
}
let p = Person2()
p.age = 22
//p.name = "JB" 상수 속성이라 안됨

struct Person1 { // 구조체의 모든 속성은 기본적으로 상수
    let name = "JB"
    var age = 30 // var 키워드를 사용해도 변경이 불가능하다.
}
let p1 = Person1()
//p1.age = 23 구조체의 가변성은 속성의 가변성에 영향을 준다.

/*
  - 클래스는 참조 유형이며, 구조체는 값 유형입니다.
  - 클래스의 var 속성은 변경 가능하지만, 구조체의 var 속성은 변경 불가능하다.
  */
/*
 Class 는 상속을 지원하지만, Struct는 지원하지 않는다.
 */



/*:# 옵셔널 */

let boyName: String? = "하늘"
let girlName: String? = "나연"

if let boy = boyName,
   let girl = girlName {
    print(boy, girl)
}


let x: Int? = 10
let y: Int? = nil

func opbinding() {
    guard let x = x else { return }
    print(x)
    
    guard let y = y else { return } // y 는 nil 이므로 여기서 return
    print(y) // 위에서 return 하였기 때문에 이 코드 라인은 실행되지 않음
}

opbinding()

// # 옵셔널 변수 값이 nil일 때를 위해 기본값 설정하기
var optNumber: Int? = 3
let number = optNumber ?? 5

optNumber = nil
let number2 = optNumber ?? 5

// .을 통해 내부 프로퍼티나 메서드에 연속적으로 접근할 때 옵셔널 값이 있으면 옵셔널 체이닝으로 접근할 수 있다.
struct Person {
    var name: String
    var address: Address
}

struct Address {
    var city: String
    var street: String
    var detail: String
}

let sam: Person? = Person(name: "Sam", address: Address(city: "서울", street: "신논현로", detail: "100길"))

print(sam?.address.city ?? "무주택자")

// 큐, 스택
struct Queue<T> { // <T> 제네릭, 하나의 타입으로 국한되지 않고 타입에 유연하게 코드를 작성할 수 있는 기능
    private var queue: [T] = []
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}

var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(20)
queue.dequeue()

struct Stack<T> {
    private var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()
    }
}

var stack = Stack<Int>()
stack.push(10)
stack.push(20)
stack.pop()



/*: # 클래스 */
// 클래스는 프로퍼티와 메서드로 구성
/*
 * 프로퍼티: 클래스, 구조체, 또는 열거형 안에 있는 변수 또는 상수
    클래스의 속성으로 객체의 상태를 저장하거나 제공.
    이러한 상태는 클래스의 인스턴스가 가질수 있는 고유한 데이터를 나타냄.
    프로퍼티는 저장프로퍼티와 계산 프로퍼티로 나뉨.
        - 저장 프로퍼티: 값을 저장, 인스턴스의 일부로 그 값을 유지
        - 계산 프로퍼티: 값을 저장하지 않고 필요할 때마다 새로 계산.
 * 메서드: 클래스, 구조체, 또는 열거형 안에 있는 함수
    클래스 동작을 정의, 클래스의 인스턴스에 대해 수행되는 특정한 작업을 수행.
 */
