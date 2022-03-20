//
//  ContentView.swift
//  HAX0R News
//
//  Created by bseyha on 19.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            
            List(networkManager.posts, rowContent: { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            ) .listStyle(PlainListStyle())
                .navigationTitle("HAX0R News")
        }
        
        .onAppear {
            
            self.networkManager.ft_fetchData()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: - POST HAX0R News

