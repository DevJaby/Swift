/*:# 내적*/

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    //a 배열의 길이 사이에 반복문
    for i in 0..<a.count {
        result += a[i]*b[i] //두 배열 같은 인덱스끼리 곱하여 더함
    }
    
    return result
}


//import Foundation
//
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    return zip(a, b).map(*).reduce(0, +)
//}
