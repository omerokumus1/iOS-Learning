//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AF.request("https://jsonplaceholder.typicode.com/posts/1")
            .response { response in
                debugPrint(response)
            }
        
        AF.request("https://jsonplaceholder.typicode.com/posts/1")
            .responseDecodable(of: Post.self) { response in
                // post is Post object
                guard let post = response.value else {return}
                print(post)
            }
        
        let parameters = ["category": "Movies", "genre": "Action"]
        AF.request("https://jsonplaceholder.typicode.com/posts/1",
                   parameters: parameters)
        
        // POST
        AF.request("https://httpbin.org/post", method: .post, parameters: parameters)
            .response { response in
                debugPrint(response)
            }
        // PUT
        AF.request("https://httpbin.org/put", method: .put, parameters: parameters)
            .response { response in
                debugPrint(response)
            }
        // DELETE
        AF.request("https://httpbin.org/delete", method: .delete).response { response in
            debugPrint(response)
        }
        
        let post = Post(userId: 1, id: 1, 
                        title: "title", body: "body")
        AF.request("https://httpbin.org/post",
                   parameters: post)
        
        AF.request("https://httpbin.org/post",
                   method: .post,
                   parameters: post)
        
    }


}

struct Post: Codable {
    let userId, id: Int
    let title, body: String
}

struct Posts: Codable {
    let posts: [Post]
}
