// 프로퍼티 옵저버: 특정 프로퍼티의 값 변경 전후에 추가 동작을 수행
// - 해당 프로퍼티를 관찰하면서 변경 사항이 발생할 때 실행
// willSet, didSet 둘 다 작성할 경우 willSet이 먼저 실행됨.

var myProperty: Int = 20 {
    didSet(oldValue) {
    // 변수 값이 변경된 직후에 호출, oldValue는 변경 전 myProperty의 값
    }
    willSet(newValue) {
// 변수 값이 변경 되기 직전에 호출, newValue는 변경 될 새로운 값
    }
}

var name: String = "Unknown" {
    willSet {
        print("현재 이름 = \(name), 바뀔 이름 = \(newValue)")
    }
    didSet {
        print("현재 이름 = \(name), 바뀌기 전 이름 = \(oldValue)")
    }
}

name = "Peter"

class UserAccount {
    var username: String
    var password: String
    var loginAttempts: Int = 0 {
        didSet {
            if loginAttempts >= 3 {
                print("로그인 시도가 3회 이상 실패하였습니다. 계정이 잠겼습니다.")
                lockAccount()
            }
        }
    }
    var isLocked: Bool = false {
        didSet {
            if isLocked {
                print("계정이 잠겼습니다.")
            } else {
                print("계정이 잠금 해제되었습니다.")
            }
        }
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func login(with enteredPassword: String) {
        if enteredPassword == password {
            print("로그인 성공!")
            loginAttempts = 0
        } else {
            print("잘못된 비밀번호입니다.")
            loginAttempts += 1
        }
    }
    
    private func lockAccount() {
        isLocked = true
    }
    
    func unlockAccount() {
        isLocked = false
    }
}
