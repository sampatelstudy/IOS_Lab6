//  Created by Samir Patel on 2022-12-07.
import SwiftUI
struct ContentView : View {
    
    @ObservedObject var model = PostViewModel()
    
    var body: some View {
        List(model.articles) { article in
            PostView(article: article)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


