/*:# nil-Coalescing Operator : nil 합병 연산자*/

let defaultColor = "black"
var userDefinedColor: String?

var myColor = userDefinedColor ?? defaultColor // 값이 없을때 nil 이 아닌 값을 변수로 옵셔널 없이 출력함

print(myColor)

userDefinedColor = "red"
myColor = userDefinedColor ?? defaultColor
print(myColor)

//var myCount = 0
//while myCount < 1000 {
//    myCount += 1
//}
//print(myCount)

var myCount = 0

repeat {
    myCount += 1
    print(myCount)
} 
while myCount < 1000


var i = 10

repeat {
    i -= 1
    print(i)
} 
while i > 0
            
for i in 1..<9 {
    if ( i > 5 ) {
        break
    }
    print(i)
}

for i in 1...10 {
    if i % 2 == 0 {
        continue
    } else {
        print(i)
    }
}

var x = 3

if x % 2 == 0 {
    print("짝수")
} else {
    print("홀수")
}

let value = 2

switch(value) {
case 1, 3, 5, 7, 8, 10, 12:
    print("31 일")
case 4, 6, 9, 11:
    print("30 일")
case 2:
    print("28 일 (윤년 29일)")
default:
    print("잘못 입력하셨습니다.")
}

var value1 = 4
switch(value1) {
case 4: // 일치하는 case 를 만나면 자동으로 빠져 나온다.
    print("4")
    fallthrough // 빠져 나가지않고 아래 케이스로 내려가게 한다.
case 3:
    print("3")
case 2:
    print("2")
case 1:
    print("1")
default:
    print("?")
}
