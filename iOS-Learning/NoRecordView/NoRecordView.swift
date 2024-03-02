//
//  NoRecordView.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

//@IBDesignable // To see rendered on storyboard
class NoRecordView: UIView {
    
    //@IBInspectable
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var contentView: UIView!
    
    
    
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
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        
        print("NoRecordView.bounds = \(bounds)")
        print("NoRecordView.frame = \(frame)")
        
        print("view.bounds = \(view.bounds)")
        print("view.frame = \(view.frame)")
        
        // If File's owner is set to NoRecordView, then we can use below code
//        Bundle.main.loadNibNamed(
//            "NoRecordView",
//            owner: NoRecordView.self
//        )
        
        //let viewFromXib = Bundle.main.loadNibNamed("NoRecordView", owner: self)![0] as! UIView
        //viewFromXib.frame = self.bounds // viewFromXib cover all possible area of the container
        //addSubview(viewFromXib)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
    }
    
    override func didMoveToWindow() {
        print("didMoveToWindow NoRecordView.bounds = \(bounds)")
        print("didMoveToWindow NoRecordView.frame = \(frame)")
        
        print("didMoveToWindow view.bounds = \(self.subviews.first!.bounds)")
        print("didMoveToWindow view.frame = \(self.subviews.first!.frame)")
    }
    
    
    
    
    
}
