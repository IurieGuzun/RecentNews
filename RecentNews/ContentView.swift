//
//  ContentView.swift
//  RecentNews
//
//  Created by Iurie Guzun on 2022-02-23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack{
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Noroc"),
//    Post(id: "4", title: "Привет")
//]
