func greeting () {
    print("hello")
}

greeting()
greeting()
greeting()
greeting()

var myAge: String = "Three"

func greeting2(whoToGreet: String) {
    print("Hello \(whoToGreet)")
}

greeting2(whoToGreet: "Jaby")
greeting2(whoToGreet: "ABC")

//Don't change this code:
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.
func add(n1: Int, n2: Int) {
    print(n1 + n2)
}

func subtract(n1: Int, n2: Int) {
    print(n1 - n2)
}

func multiply(n1: Int, n2: Int) {
    print(n1 * n2)
}

func divide(n1: Int, n2: Int) {
    let m1 = Double(n1)
    let m2 = Double(n2)
    print(m1 / m2)
}
