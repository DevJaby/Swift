/*:# 행렬의 덧셈*/
func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]]? {
  // 두 행렬의 크기가 같은지 검사
  guard arr1.count == arr2.count && arr1[0].count == arr2[0].count else {
    // 행렬 크기가 다르면 nil 반환
    return nil
  }
  
  // 결과 행렬 초기화
  var result = Array(repeating: Array(repeating: 0, count: arr1[0].count), count: arr1.count)
  
  // 두 행렬을 순회하며 각 원소의 값을 더하여 결과 행렬에 저장
  for i in 0..<arr1.count {
    for j in 0..<arr1[0].count {
      result[i][j] = arr1[i][j] + arr2[i][j]
    }
  }
  
  // 결과 행렬 반환
  return result
}
