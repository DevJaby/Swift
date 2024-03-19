var a = 5
var b = 8

var c = a // c = 5
a = b // a = 8
b = c
// Replace this line with your code.

print("a: \(a)")
print("b: \(b)")

var numbers = [45, 73, 195, 53]
//배열 요소들 곱하기
var computedNumbers = [numbers[0] * numbers[1], numbers[1] * numbers[2], numbers[2] * numbers[3], numbers[3] * numbers[0]]

print(computedNumbers)


/*:# [Code Exercise] Randomisation*/

func exercise() {
    
    
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    
    var password = alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)]
    //Replace this comment with your code.
    
    print(password)
    
    
}

