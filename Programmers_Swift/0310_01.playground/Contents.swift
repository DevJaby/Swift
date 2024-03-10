func solution(_ n:Int) -> Int {
    
    var x = 1 // [변수선언] x: n을 x로 나눈 나머지가 1이 되는 가장 작은 자연수
    
    while true { //[반복문]
        if n % x == 1 { // [변수선언] n: 입력받은 자연수
            return x // [반복문] n % x == 1 조건을 만족하는 x를 찾습니다.
        }

        x += 1  //[반복문] x = 1부터 시작하여 무한히 반복합니다.
    }
}
