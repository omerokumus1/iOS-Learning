//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var counter = 0
    
    let publisher = PassthroughSubject<Int, Never>()
    
    let cancellables = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    private func bind() {
        let s = publisher.sink { completion in
            print("ReceiveCompletion completion: \(completion)")
        } receiveValue: { value in
            print("receiveValue value: \(value)")
        }
        
        let myRange = (0...3)
        let cancellable = myRange.publisher
            .sink(receiveCompletion: { print ("completion: \($0)") },
                  receiveValue: { print ("value: \($0)") })
    
        publisher.send(1)
        publisher.send(2)
        publisher.send(3)
    
    }

}

