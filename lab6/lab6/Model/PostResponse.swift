//  Created by Samir Patel on 2022-12-07.
import UIKit
struct PostResponse: Codable {
    let userId: Int
    let id: Int?
    let title: String?
    let body: String?
}
