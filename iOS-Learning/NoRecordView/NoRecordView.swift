//
//  NoRecordView.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class NoRecordView: UIView {

    @IBOutlet weak var lblNoRecord: UILabel!
    
    // Called once the View is created programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    // Called once we add the view to storyboard or another xib
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    private func initView() {
        let viewFromXib = Bundle.main.loadNibNamed("NoRecordView", owner: self, options: nil)?[0] as? UIView
        viewFromXib?.frame = self.bounds
        if viewFromXib != nil {
            addSubview(viewFromXib!)
        }
    }

}
