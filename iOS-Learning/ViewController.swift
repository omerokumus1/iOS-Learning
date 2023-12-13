//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let textView: UITextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Swift to JSON
//        let post = Post(id: 1, title: "title", body: "body")
//        let postJson = try? JSONEncoder().encode(post)
        
        postPost()
    }
    
    func getPosts() {
        let urlStr = "https://jsonplaceholder.typicode.com/posts"
        guard let url = URL(string: urlStr) else {return}
//        let session = URLSession(configuration: .default)
//        
//        let dataTask = session.dataTask(with: <#T##URLRequest#>,
//                                completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
//        
//        let downloadTask = session.webs
        
    
        
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error occured: \(error)")
                return
            }
            
            guard let response = response as? HTTPURLResponse,
                  (200...299).contains(response.statusCode) else {
                print("Response Error occured: \(response)")
                return
            }
            
            if let data = data {
                let jsonRes = try? JSONSerialization.jsonObject(with: data)
//                DispatchQueue.main.async {
//                    self.textView.text = "Fetch successful"
//                }
                
                // Response to Swift
//                let response = try? JSONDecoder()
//                    .decode(Response.self, from: data)
                
                
                print("Response: \(jsonRes)")
            }
        }
        task.resume()
        
    }
    
    func postPost() {
        
        let params = [
            "title": "Request Title",
            "body": "Request Body"
        ]
        
        let urlStr = "https://jsonplaceholder.typicode.com/posts"
        guard let url = URL(string: urlStr) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: params)
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared
            .dataTask(with: request) { data, response, error in
                if let error = error {
                    print("Error occured: \(error)")
                } else {
                    let jsonRes = try? JSONSerialization.jsonObject(with: data!)
                    print(jsonRes)
                }
            }
        task.resume()
    }

}



