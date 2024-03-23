func solution(_ phoneNumber: String) -> String {
  let length = phoneNumber.count
  let hiddenPart = length - 4
  let hiddenString = String(repeating: "*", count: hiddenPart)
  let result = hiddenString + phoneNumber.suffix(4)
  return result
}

