//
//  NoRecordView.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

@IBDesignable // To see rendered on storyboard
class NoRecordView: UIView {
    
    @IBInspectable
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
        let bundle = Bundle(for: type(of: self))
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        
        //let viewFromXib = Bundle.main.loadNibNamed("NoRecordView", owner: self)![0] as! UIView
        //viewFromXib.frame = self.bounds // viewFromXib cover all possible area of the container
        //addSubview(viewFromXib)
    }
    
}
