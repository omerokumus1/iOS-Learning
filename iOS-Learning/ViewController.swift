//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    let colors = [
        UIColor.red,
        UIColor.blue,
        UIColor.green,
        UIColor.yellow,
        UIColor.orange,
        UIColor.purple,
        UIColor.red,
        UIColor.blue,
        UIColor.green,
        UIColor.yellow,
        UIColor.orange,
        UIColor.purple,
    ]
    @IBOutlet weak var collectionView: UICollectionView!
    var layout = UICollectionViewFlowLayout()
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.layer.borderWidth = 1.0
        collectionView.layer.borderColor = UIColor.black.cgColor
        
        // Horizontal scrolling
        layout.scrollDirection = .horizontal
        
        // Full size of the collectionView
        // layout.itemSize = collectionView.frame.size
        
        // Half of the width + full height
        layout.itemSize = CGSize(width: collectionView.frame.width/2, height: collectionView.frame.height)
        
        
        // collectionView padding (If itemSize height is equal to collectionView height, then vertical padding is not shown)
        // layout.sectionInset = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        
        // contentView margin (If itemSize height is equal to collectionView height, then vertical padding is not shown)
        // This margin does not set margin between items
        collectionView.contentInset = UIEdgeInsets(top: 8, left: 12, bottom: 16, right: 20)
        
        /* -> Setting Margin between items
                1. Provide itemSize
                2. Give inset to cell
                    or
                    give trailing constraint to contentView, constraint to cell trailing
         */
        
        
        /*  -> Using Padding and achieving somehow wrap_content
            1. Provide itemSize
            2. Provide contentInset
            3. set collectionView width and height according to the itemSize and contentInset
         */
        
        
        /* -> How does collection view lays out its elements
            1. It has a grid behavior. 
                If scrollDirection is horizontal:
                    row-wise distribution: Place up to down, then next column
                
                If scrollDirection is vertical:
                    column-wise distribution: Place left to right, then next row
        
            2. It lays out its elements so that the spacing between them is the
                same in each row or column
         
         */
        
        
        collectionView.collectionViewLayout = layout
        collectionView.dataSource = self
        //collectionView.delegate = self
        collectionView.isPagingEnabled = false
        
        /* Error when not registered:
         Unexpectedly found nil while implicitly unwrapping an
         Optional value
         
         This happens when you try to access a view in custom cell
        */
        collectionView.register(
            UINib.init(
                nibName: CustomCell.identifier,
                bundle: nil
            ),
            forCellWithReuseIdentifier: CustomCell.identifier
        )
        // Useless for single row horizontal collection view
        //layout.minimumInteritemSpacing = 0
        
        // Sets minimum horizontal spacing between items in the
        // single row horizontal collection view
        layout.minimumLineSpacing = 0
        
        layout.itemSize = CGSize(width: collectionView.frame.width-40, height: collectionView.frame.height)
        
        
    }


}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        return colors.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CustomCell.identifier,
            for: indexPath
        ) as! CustomCell
        
        let color = colors[indexPath.row]
        cell.configure(text: color.accessibilityName, color: color)
        
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    
//    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        let itemWidth = layout.itemSize.width
//        let proportionalOffset = layout.collectionView!.contentOffset.x / itemWidth
//        let index = Int(round(proportionalOffset))
//        let numberOfItems = collectionView.numberOfItems(inSection: 0)
//        let safeIndex = max(0, min(numberOfItems - 1, index))
//        
//    }
    
    func scrollViewWillEndDragging(
        _ scrollView: UIScrollView,
        withVelocity velocity: CGPoint,
        targetContentOffset: UnsafeMutablePointer<CGPoint>
    ) {
        
    }
}
