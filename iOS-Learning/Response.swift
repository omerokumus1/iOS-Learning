//
//  Response.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 7.12.2023.
//

import Foundation

struct Response: Decodable & Encodable {
    let id: Int
    let userId: Int
    let title: String
    let body: String
}
