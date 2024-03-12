/*:# Structure */
/*
struct StructName {
    property
    method
    initializer
    subscript
    }
*/

struct Person {
    var name: String
    var age: Int
    
    func speak() {
        print("hello")
    }
}

let p = Person(name: "Steve", age: 50)
print(p)

//인스턴스 p 뒤에 .프로퍼티(속성)이름
p.name
p.age

p.speak()

/*:# Class */
/*
 class ClassName {
    property
    method
    initializer
    deinitializer // 소멸자
    subscript
 }
 
 class Person {
 */

class Person1 {
    var name: String = "Steve"
    var age: Int = 50
    
    func speak() {
        print("Hello")
    }
}

let p1 = Person1()
p1.name
p1.age

p1.speak()


/*:# Initializer */
/*
 init(parameters) {
    statements
 }
 */

class Position {
    var x: Double
    var y: Double

    init() {
        x = 0
        y = 0
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    init(value: Double) {
        x = value
        y = value
    }
}

/*:# Explicit Member Expression - 점문법(명시적 멤버 표현식)*/
let a = Position()
a.x
a.y

let b = Position(x: 0, y: 1)
b.x
b.y

let c = Position(value: 30)
c.x
c.y

/*:# Lazy Stored Property - 지연 저장 속성 */
//lazy var name: Type = DefaultValue

 
