// MARK: Array

// Element -> Single Type
// 0 -> based Index 0 1 2 3 4 5

// Array Literal
// [elem, elem, ...]

let numList = [1, 2, 3]
let multi = [[1, 2, 3], [4, 5, 6]] // 2차원 배열

// Array Type
let strArray: Array<String> // 문자열을 저장하는 배열 선언
let strArray2: [String] // 위와 같음 (단축)

// Array Basics
let nums = [1, 2, 3]
let emptyArray: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10) //초기 값, 갯수

// Inspecting an Array
nums.count //배열의 갯수
nums.count == 0
nums.isEmpty
emptyArray.isEmpty

//Accessing Element
let fruits = ["Apple", "Banana", "Melon"]
fruits[0] // index는 0부터
fruits[2] // 갯수 - 1
fruits[0...1]

fruits[fruits.startIndex]
fruits.first
fruits.last

let list = ["A", "B", "C", "D", "E"]
list[0...2]

list[2...]
list[...2]

list.prefix(3) // 앞에서 3개
list.prefix(30) // 앞에서 30개

list.prefix(upTo: 3) // 3개 미만 -> 2개
list.prefix(through: 3) //3개 까지 포함

let r = list.prefix { $0 != "C" } // index 0 부터 "C" 가 아닐때 까지

list.suffix(3) // 뒤에서 3개
list.suffix(from: 3) // 뒤에서 3개 미만 -> 2개

let list1 = ["a", "b", "c"]
list1.count

let a = 123

// Adding Elements

var mutableAlphabet = ["A", "B", "C"]
mutableAlphabet.append("E") // 배열 뒤쪽에 추가
mutableAlphabet.append(contentsOf: ["F", "G"])

mutableAlphabet.insert("D", at: 3)
mutableAlphabet.insert(contentsOf: ["a", "b", "c"], at: 0)

mutableAlphabet[0...2] = ["x", "y", "z"]
mutableAlphabet

mutableAlphabet.replaceSubrange(0...2, with: ["x", "y", "z"])

mutableAlphabet[0...2] = ["z"]
mutableAlphabet

mutableAlphabet[0..<1] = []
mutableAlphabet


//Removing Elements

var alphabet = ["A", "B", "C", "D", "E", "F", "G"]

alphabet.remove(at: 2)
alphabet

alphabet.removeFirst() // 삭제한값을 리턴해준다.
alphabet

alphabet.removeFirst(2) // 삭제한 배열을 리턴해준다.
alphabet

alphabet.removeAll()

alphabet.popLast()

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast() //배열 마지막 값을 꺼낸다.
alphabet

alphabet.removeSubrange(0...2) // 지정한 배열 삭제
alphabet
 
alphabet = ["A", "B", "C", "D", "E", "F", "G"]

alphabet.dropFirst()
alphabet.dropFirst(3)
alphabet

let r2 = alphabet.drop { $0 != "C" } // "C" 가 나올때까지 drop 해준다 -> "C" 부터 나옴
r2

// Comparing Arrays : 배열 비교

let c = ["A", "B", "C"]
let d = ["a", "b", "c"]

c == d
c != d

c.elementsEqual(d)

//c < d * 배열에서 크기와 순서는 비교할수없다.

// Finding Elements : 요소 검색

let randomNumbers = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

randomNumbers.min()

c.min() // 아스키 코드도 가능

randomNumbers.max()

randomNumbers.contains(1)
let r3 = randomNumbers.contains { $0.isMultiple(of: 2)}
r3

randomNumbers.first { // 처음 짝수 출력
    $0.isMultiple(of: 2)
}

randomNumbers.firstIndex(of: 3) // 요소 3이 있는 인덱스 출력

randomNumbers.firstIndex { // 처음 짝수의 인덱스 출력
    $0.isMultiple(of: 2)
}

randomNumbers.firstIndex(of: 5) // 시작에서의 5의 인덱스
randomNumbers.lastIndex(of: 5) // 끝에서 5의 인덱스

// Sorting on Array : 배열 정렬

randomNumbers.sorted()
randomNumbers // 그대로
let sorted = randomNumbers.sorted { $0 > $1 }
sorted

[Int](randomNumbers.sorted().reversed())

//randomNumbers.sort() 원본을 바꾸는 메소드는 불변 배열에서는 사용할수 없다.
var mutableNums = randomNumbers
mutableNums.sort() // 순서대로 정렬
mutableNums.reverse() // 역순으로 정렬

mutableNums
mutableNums.swapAt(0, 1) // index 0번째와 index 1번째 순서를 바꿈

mutableNums.shuffle() // 배열 섞기
mutableNums
mutableNums.shuffled() // 섞었을 때를 보여줌 mutableNums 은 안바뀜
mutableNums
