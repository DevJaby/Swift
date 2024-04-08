/*
 상태 : 프로퍼티
 행동 : 메서드
 */
class Human {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    
    func speak() {
        print("Hello, world!")
    }
}

