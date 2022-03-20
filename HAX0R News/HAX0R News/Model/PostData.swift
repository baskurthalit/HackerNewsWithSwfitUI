//
//  PostData.swift
//  HAX0R News
//
//  Created by Macbook on 19.03.2022.
//

import Foundation

struct Results : Decodable {
    let hits: [Post]
}

struct Post : Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
