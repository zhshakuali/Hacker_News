//
//  PostData.swift
//  Hacker_News
//
//  Created by Жансая Шакуали on 23.04.2023.
//

import Foundation

struct Result: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
   
}
