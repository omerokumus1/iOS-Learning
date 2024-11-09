//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let blogPost = BlogPost(title: "Improved debugging",
                            body: "Help yourself in those hard times.")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // print & debugPrint for class instance
//        let blogPost = BlogPost(title: "Improved debugging",
//                                body: "Help yourself in those hard times.")
        print(blogPost) // Prints: BlogPost
        debugPrint(blogPost) // Prints: BlogPost
        
        // print & debugPrint for struct instance
        print("\nprint & debugPrint for struct instance")
        let post = Post(title: "Improved debugging", body: "Help yourself in those hard times.")
        print(post)
        // Prints: Post(title: "Improved debugging", body: "Help yourself in those hard times.")
        debugPrint(post)
        // Prints: Post(title: "Improved debugging", body: "Help yourself in those hard times.")
        
        
        // print & debugPrint for NSObject instances when debugDescription is not overridden
        print("\nprint & debugPrint for NSObject instances when debugDescription is not overridden")
        let viewController = self
        print(viewController)
        // Prints: <BlogPostViewController: 0x7ff77ac0c720>
        debugPrint(viewController)
        // Prints: <BlogPostViewController: 0x7ff77ac0c720>
        
        
        // print & debugPrint for NSObject instances when debugDescription is overridden
        print("\nprint & debugPrint for NSObject instances when debugDescription is overridden")
        print(viewController)
        // Prints: <BlogPostViewController: 0x7ff77ac0c720>
        debugPrint(viewController)
        // Prints: <iOS_Learning.ViewController: 0x105b23cc0> represents the post with title
        //                          "Improved debugging" and body "Help yourself in those hard times."
        
        
        
        // CustomStringConvertible
        print("\nCustomStringConvertible")
        print(viewController)
        debugPrint(viewController)
    }


}

// MARK: Debugging
extension ViewController {
    override var description: String {
        "ViewController description"
    }
    
    override var debugDescription: String {
        "\(self) represents the post with title \"\(blogPost.title)\" and body \"\(blogPost.body)\""
    }
}

class Person: CustomStringConvertible {
    var name: String = ""
    var age: Int = 0
    
    var description: String {
        return "Person(name: \(name), age: \(age))"
    }
}


enum Direction: CustomStringConvertible {
    case north, south, east, west
    
    var description: String {
        switch self {
            case .north: return "North"
            case .south: return "South"
            case .east: return "East"
            case .west: return "West"
        }
    }
}



final class BlogPost {
    let title: String
    let body: String
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}

struct Post {
    let title: String
    let body: String
    
}



