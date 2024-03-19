//클로저
//이름 없는 함수, 익명함수
//
//값 캡쳐
//참조 캡쳐

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var total = 0
    
    let incrementer: () -> Int = {
        total += amount
        return total
    }
    return incrementer
}

func closureFunc2(closure: () -> ()) {
    print("시작")
    closure()
}

let closureType1 = { (param) in
    return param % 2 == 0
}

let closureType2 = { $0 % 2 == 0 }

let closureType3 = { (a: Int, b: Int) -> Int in
    return a * b
}

let closureType4: (Int, Int) -> Int = { (a, b) in
    return a * b
}

let closureType5: (Int, Int) -> Int = {
    $0 * $1
}

/*:# 고차함수*/
// 다른 함수를 인자로 받거나, 함수의 결과로 함수를 반환하는 함수
/*:## map*/
// - 컬렉션 내부의 기존 데이터를 변형하여 새로운 컬렉션을 생성
// - 기존 컬렉션의 요소에 대해 정의한 익명함수로 매칭한 결과를 새로운 컬렉션으로 반환
var numberArray: [Int] = []
let stringArray = ["1", "2", "3", "4", "5"]
 numberArray = stringArray.map {
    if let changeToInt = Int($0) {
        return changeToInt
    }
    return 0
}

print(numberArray)


/*:## filter*/
let number1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let evenNumber2 = number1.filter{ $0 % 2 == 0 }

print(evenNumber2)

/*:## reduce*/
// 기존 컨테이너의 요소에 대해 정의한 클로저로 매핑한 결과를 새로운 컨테이너로 반환

let number2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var sum = 0

for i in number2 {
    sum += i
}

print(sum)

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let sum1 = numbers.reduce(0, +)

print(sum1)
