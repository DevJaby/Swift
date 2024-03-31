import Foundation

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int {
    var totalCost = 0
    
    // 놀이기구를 count번 타는 데 필요한 총 비용 계산
    for i in 1...count {
        totalCost += price * i
    }
    
    // 현재 자신이 가지고 있는 금액에서 모자란 금액 계산
    let shortage = totalCost - money
    
    // 모자라는 금액 반환
    return max(0, shortage)
}
