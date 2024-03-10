
/*:# if Statement*/
/*
if condition {  //condition == 조건 == Boolean
    statements  // condition이 true면 if 블록 실행
 }
*/

let id = "root"
let password = "1234qwer"

if id == "root" {
    print("valid id")
}

if id == "root" && password == "1234qwer" {
    print("go to admin page")
}

/*
 if condition {
 statements  //condition이 true 일때 실행
 } else {
 statements //condition이 false 일때 실행
 }
 */

if id == "root" && password == "12345" {
    print("hello")
} else {
    print("incorrect value")
}

let num = 123

if num >= 0 {
    print("Positive number or zero") //condition true 면 끝남.
} else if num % 2 == 0 {
    print("Positive even number")
} else if num % 2 == 1 {
    print("Positive odd number")
} else {
    print("negative number")
}


if num >= 0 {
    print("Positive number or zero") //condition true 면 끝남.
    if num % 2 == 0 {
        print("Positive even number") //condition true 면 출력
    } else if num % 2 == 1 {
        print("Positive odd number")
    }
} else {
    print("negative number")
}

if num > 0 {    // if문은 조건 순서가 중요하다
    print("Positive number")
} else if num > 10 {
    print("Positive number over 10")
} else if num > 100 {
    print("Positive number over 100")
}


