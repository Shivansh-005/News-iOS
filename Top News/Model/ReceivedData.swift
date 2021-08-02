//
//  ReceivedData.swift
//  Top News
//
//  Created by Shivansh on 21/03/20.
//  Copyright © 2020 Shivansh. All rights reserved.
//

import Foundation
struct Results:Decodable{
    var articles:[root]
}
struct root:Decodable,Identifiable{
    var id:String
    {return source.id}
    var author:String?
    var title:String
    var url:String
   var source:src
}
struct src:Decodable,Identifiable{
    var id:String{return name}
    var name:String
}
