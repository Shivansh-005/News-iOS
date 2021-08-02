//
//  ContentView.swift
//  Top News
//
//  Created by Shivansh on 21/03/20.
//  Copyright © 2020 Shivansh. All rights reserved.
//

import SwiftUI
struct ContentView: View{
    @ObservedObject var networkingManager=NetworkManager()
    var body: some View {
        NavigationView{
            List(networkingManager.content){
            data in
            NavigationLink(destination: MoreDetails(url:data.url)) {
                Text(data.title)
            
            }
        }
            .navigationBarTitle("Trending in India")
        }
       .onAppear(){self.networkingManager.fetchdata()}}
    }
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

