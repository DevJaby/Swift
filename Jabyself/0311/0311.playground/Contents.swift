/*: # 클래스, 객체, 메서드, 속성, 생성자 */
class Car {
    var model: String // 모델 속성 변수 선언
    var color: String // 색상 속성 변수 선언
    
    // 매개변수: 함수 또는 메서드에 정보를 전달하는데 사용 되는 변수
    init(model: String, color: String) { // 생성자: 모델과 색상을 매개변수로 받아 객체 초기화 ,
        self.model = model
        self.color = color
    }
}
// 변수: 데이터를 저장하고 관리하는 역할
// 매개 변수(Parameter): 함수에 데이터를 전달하는 역할
// 클래스: 객체의 설계도 역할
// 객체: 클래스를 기반으로 생성된 개별 인스턴스
// 상속: 클래스가 다른 클래스의 속성과 메서드를 물려받는 기능
// 초기화: 객체 생성 시 속성 값을 설정하는 과정

// 프로토콜: 클래스가 구현해야 하는 기능 정의
// 익스텐션: 기존 클래스에 새로운 기능 추가
// 제너릭: 자료형에 독립적인 코드 작성
// 클로저: 함수를 변수처럼 저장하고 사용

func sayHi(to friend: String) {
    print("Hi~ \(friend)")
}
sayHi(to: "영호")

func sayHi(_ friend: String) -> String { // _ 언더스코어: 매개변수(파라미터) 이름을 생략
    return ("Hi~ \(friend)")
}
print(sayHi("영호"))


