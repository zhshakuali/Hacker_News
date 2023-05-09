//
//  ContentView.swift
//  Hacker_News
//
//  Created by Жансая Шакуали on 19.04.2023.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: Details(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//struct Post: Identifiable{
//    let id: String
//    let title: String
//}
//let posts = [
//    Post(id: "1", title: "Salem"),
//    Post(id: "2", title: "Privet"),
//    Post(id: "3", title: "Hello")
//]
