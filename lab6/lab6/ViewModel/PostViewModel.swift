//  Created by Samir Patel on 2022-12-07.
import UIKit
import Combine
class PostViewModel: ObservableObject {
    
    init() {
        getPosts()
    }
    @Published var articles = [PostModel]()
    
    private func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        NetworkManager.loadData(url: url) { articles in
            if let articles = articles {
                self.articles = articles.map(PostModel.init)
            }
        }
    }
}
