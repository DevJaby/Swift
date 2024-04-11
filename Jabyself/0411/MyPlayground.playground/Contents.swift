/*:# URLSession을 사용하여 RESTful API를 통해 상품 정보 가져오기*/

import Foundation

// Product 구조체 선언: 상품 정보를 담는 구조체
struct Product: Decodable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let discountPercentage: Double
    let rating: Double
    let stock: Int
    let brand: String
    let category: String
    let thumbnail: String
    let images: [String]
}

// 가져올 상품의 ID 정의
let productID = 2

// URL 생성
if let url = URL(string: "https://dummyjson.com/products/\(productID)") {
    // URLSessionDataTask를 사용하여 비동기적으로 데이터 요청
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        // 에러 처리
        if let error = error {
            print("Error: \(error)")
        } else if let data = data {
            do {
                // JSON 데이터를 Product 구조체로 디코딩
                let product = try JSONDecoder().decode(Product.self, from: data)
                // 디코딩된 상품 정보 출력
                print("Deocded Product: \(product)")
            } catch {
                // 디코딩 실패 시 에러 출력
                print("Decode Error: \(error)")
            }
        }
    }
    
    // 데이터 요청 시작
    task.resume()
}
