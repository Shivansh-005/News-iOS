//
//  NetworkManager.swift
//  Top News
//
//  Created by Shivansh on 21/03/20.
//  Copyright © 2020 Shivansh. All rights reserved.
//
//https://newsapi.org/v2/top-headlines?country=us&apiKey=57ac38e23f4a495795a8e3aecd8d3886
import Foundation
class NetworkManager:ObservableObject{
    @Published var content=[root]()
    func fetchdata()
    {
    if let url=URL(string:"https://newsapi.org/v2/top-headlines?country=in&apiKey=57ac38e23f4a495795a8e3aecd8d3886"){
    let session=URLSession(configuration: .default)
       let task=session.dataTask(with: url) { (data, response, error) in
            if error==nil{
                if let safeData=data{
                    let decoder=JSONDecoder()
                    do{
                    let result=try decoder.decode(Results.self, from: safeData)
                        DispatchQueue.main.async{
                            self.content=result.articles
//                            print(result.articles[0].title)
                    }
                    }
                    catch{
                        print(error)
                    }
                }
            }
        }
        task.resume()
}
}
}
