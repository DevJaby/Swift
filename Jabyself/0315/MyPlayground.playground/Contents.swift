/*: 데이터 타입 */

var muNumber: Int = 10


// print 함수 사용법
print(1.0, 2.0, 3.0, 4.0, 5.0)

print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")

for i in 1...5 {
    print(i, terminator: " ")
}

// 자료형의 종류와 크기
var x = 10
print(type(of: x))

let s = MemoryLayout.size(ofValue: x)
let t = MemoryLayout<Float>.size

print(s, t)
print(MemoryLayout.size(ofValue: x))

// 튜플
// 여러 값을 하나의 개체에 일시적으로 묶는 방법

let myTuple = (10, 12.1, "Hi")

let (myInt, myFloat, myString) = myTuple
print(myInt)

// 파라미터 명
let myTuple1 = (count: 10, length: 12.1, message: "Hi")
print(type(of: myTuple1))
print(myTuple1.0)


var myString1 = myTuple.2
print(myString1)

// forced unwrapping 강제 언레핑: !, 옵셔널 바인딩
var a: Int?
a = 10
if a != nil { // 강제 언레핑
    print(a!)
} else {
    print("nil")
}

var b: Int?
if b != nil {
    print(b!)
} else {
    print("nil")
}


var c: Int?
c = 10
if let cc = c { // 옵셔널 바인딩
    print(cc)
} else {
    print("nil")
}

var d: Int?
if let dd = d {
    print(dd)
} else {
    print("nil")
}

// 옵셔널 바인딩: 여러 값 동시에 언래핑하기
var e: Int?
var f: Int?

e = 10
f = 20

//if let ee = e {
//    print(ee)
//} else {
//    print("nil")
//}
//if let ff = f {
//    print(ff)
//} else {
//    print("nil")
//}

if let ee = e, let ff = f {
    print(ee, ff)
} else {
    print("nil")
}

let g: Int! = 1
let h: Int = g
let i: Int = g!
let j = g
let k = g + 1

print(g, h, i, j, k)
