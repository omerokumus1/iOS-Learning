//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let calendarView = UICalendarView(frame: 
                                            CGRect(x: 50, y: 50,
                                                   width: 300, height: 300))
        
        
        let fromDateComponents = DateComponents(calendar: 
                                                    Calendar(identifier: .gregorian),
                                                year: 2022, month: 1, day: 1)
        let toDateComponents = DateComponents(calendar: 
                                                Calendar(identifier: .gregorian),
                                              year: 2022, month: 12, day: 31)
        
        
        guard let fromDate = fromDateComponents.date, 
                let toDate = toDateComponents.date else {
            return
        }
        
        
        let calendarViewDateRange = DateInterval(start: fromDate, end: toDate)
        calendarView.availableDateRange = calendarViewDateRange
        
        
        self.view.addSubview(calendarView)
        
        
    }


}

