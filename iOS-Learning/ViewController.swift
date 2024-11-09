//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit
import OSLog

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Simple logging
        Logger.viewCycle.info("ViewController viewDidLoad")
        
        // Log Levels
        Logger.viewCycle.notice("Notice example")
        Logger.viewCycle.info("Info example")
        Logger.viewCycle.debug("Debug example")
        Logger.viewCycle.trace("Notice example")
        Logger.viewCycle.warning("Warning example")
        Logger.viewCycle.error("Error example")
        Logger.viewCycle.fault("Fault example")
        Logger.viewCycle.critical("Critical example")
        
        
        // Sensitive Data Logging
        let username = "Example Username"
        Logger.viewCycle.info("User \(username, privacy: .private) logged in")
        
        let people = [
            Person(index: 14, name: "Antoine", id: "8DA690DD-5D97-4B53-897A-C2D98BA0440D", age: 17),
            Person(index: 54, name: "Jaap", id: "31C442DC-BA95-49D3-BB38-E1DD4483E124", age: 99),
            Person(index: 35, name: "Lady", id: "879378DB-FF29-460A-8CA4-B927233A3AA9", age: 93)
        ]
        
        people.forEach { p in
            log(p)
        }
        
    }
    
    func log(_ person: Person) {
        Logger.statistics.debug("\(person.index) \(person.name, align: .left(columns: 10)) \(person.id)")
    }
    
}

struct Person {
    let index: Int
    let name: String
    let id: String
    let age: Int
}

