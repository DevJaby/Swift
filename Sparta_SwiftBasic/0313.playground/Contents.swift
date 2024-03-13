/*:# 타입 캐스팅 */
/*:> `변수나 객체의 타입을 다른 타입으로 변환하는 프로세스`*/
/*:## 1. is */

let char: Character = "A"

print(char is Character)
print(char is String)


let bool: Bool = true

print(bool is Bool)
print(bool is Character)

/*:## 2. as, as!, as?
 
 ### as
 
 `- as 연산자는 컴파일 단계에서 캐스팅이 실행됨. 따라서 항상 타입 캐스팅이 성공할 경우에만 사용할 수 있음.`
 
 `- 캐스팅에 실패할 경우 에러`
 
 `- 캐스팅하려는 타입이 같은 타입이거나 슈퍼클래스 타입이라는 것을 알 때 as 연산자를 사용함.`
 
 ### as?
 `- as? 연산자는 런타임에 캐스팅됨.`
 
 `- 성공하면 옵셔널 타입의 인스턴스를 반환, 실패하면 nil 반환.`
 
 `- 실패할 가능성이 있으면 as?를 사용하는 것이 좋음.`
 
 ### as!
 `- as! 연산자는 런타임에 특정 타입으로 강제 캐스팅`
 `- 강제 타입 캐스팅에 실패할 경우 런타임 에러.`
 `- 캐스팅에 성공한 경우 인스턴스 반환(옵셔널X)`*/

class Person {
    var id = 0
    var name = "name"
    var email = "devjaby@gmail.com"
}

class Worker: Person {
    // id
    // name
    // email
    var salary = 500
}

class Programmer: Worker {
    // id
    // name
    // email
    // salary
    var lang = "Swift"
}

/*:### 업캐스팅 - as*/
let person1 = Person()
let worker1 = Worker()
let programmer1 = Programmer()

let personList = [person1, worker1, programmer1] // 타입을 선언하지않았지만 Person 타입으로 인식 -> 업캐스팅 되었음.
personList[1].name
// personList[1].salary // Person 타입으로 보고 있기 때문에 salary에 접근 못함.

let worker2 = Worker()
worker2.salary

let workerPerson = worker2 as Person
// workerPerson.salary // Person 타입으로 보고 있기 때문에 salary 에 접근하지 못함.

/*:### 다운캐스팅 - as? / as!*/
let pro = programmer1 as? Programmer // 타입 변환이 될 수도 있고 안될 수도 있기 때문에 옵셔널을 리턴

if let person2 = programmer1 as? Programmer {
    person2.lang
}

if let person3 = worker1 as? Programmer {
    person3.lang
}

/*:### as! */
// let pro2 = worker2 as! Programmer // Errror: 타입 변환 실패시 오류


/*:# 접근제한자*/
/*:>`코드 요소에 대한 외부 접근을 제한하여 모듈 간의 접근성과 보안을 조절하는 키워드`*/

/*:### `[제약이 적음] open < public < internal < fileprivate < private [제약이 많음]`
 
 `- open: 모든 소스 파일에서 해당 level 접근 가능 + 모든 곳에서 서브클래싱 가능`
 
 `- public: 모든 소스 파일에서 해당 level 접근 가능 + 같은 모듈 내에서만 서브클래싱 가능`
 
 `- internal: 같은 모듈 내에서만 접근 가능 - 작성하지 않았을 경우`
 
 `- fileprivate: 같은 소스파일 내에서만 접근 가능`
 
 `- private: 클래스 내부에서만 접근 가능`
 
 `- 상위 요소보다 '하위 요소가 더 높은 수준을 가질 수 없음.'
 */
private struct Car {
    public var model: String // 에러
}

/*:# mutating */
/*:`struct 나 enum 내에서 메서드가 해당 속성을 수정할 수 있도록 하는 키워드.`
 
 `즉, 상수로 선언된 인스턴스를 복제하여 수정.`
 */

struct Point {
    var x = 0.0, y = 0.0
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var point = Point(x: 1.0, y: 1.0)
print("Before moving: x = \(point.x), y = \(point.y)")

point.moveBy(x: 2.0, y: 3.0)
print("After moving: x = \(point.x), y = \(point.y)")

enum TrafficLight {
    case red, yellow, green
    
    mutating func next() {
        switch self {
        case.red:
            self = .green
        case.yellow:
            self = .red
        case.green:
            self = .yellow
        }
    }
}

var currentLight = TrafficLight.red
print("Current Light is \(currentLight)")

currentLight.next()
print("Next Light is \(currentLight)")

/*:# Closure 클로저
 상수나 변수의 참조를 캡쳐해 저장할 수 있음.
 */

// 값 캡쳐
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var total = 0
    // 클로저를 반환
    let increment: () -> Int = {
        // total 함수를 캡쳐하여 저장.
        total += amount
        return total
    }
    
    return increment
}

let incrementByten = makeIncrementer(forIncrement: 10)
print(incrementByten())
print(incrementByten())


// 참조 캡쳐
class SimpleClass {
    var value: Int = 10
}

func createClosure() -> () -> Int {
    let instance = SimpleClass()
    
    let closure: () -> Int = {
        instance.value *= 2
        return instance.value
    }
    
    return closure
}

let myClosure = createClosure()

print(myClosure())
print(myClosure())


