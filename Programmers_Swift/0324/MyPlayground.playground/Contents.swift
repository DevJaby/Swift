func solution(_ numbers: [Int]) -> Int {
  var set = Set(0...9)
  numbers.forEach { set.remove($0) }
  return set.reduce(0, +)
}
