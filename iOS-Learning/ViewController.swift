//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftBtn: UIButton!
    @IBOutlet weak var rightBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var redBar: UIView!
    
    let colors = [UIColor.yellow, UIColor.green]
    var currentPageIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        //collectionView.isScrollEnabled = false
        //collectionView.isPagingEnabled = true
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionViewLayout.scrollDirection = .horizontal
        // xib -> collectioniew -> size inspector -> estimated size = none
        collectionViewLayout.itemSize = CGSize(
            width: collectionView.frame.width,
            height: collectionView.frame.height
        )
    }

    @IBAction func leftBtnTapped(_ sender: UIButton) {
        if currentPageIndex == 1 {
            UIView.animate(withDuration: 0.3) {
                self.redBar.frame.origin.x = 0
            }
            collectionView.scrollToPreviousItem()
            currentPageIndex = 0
        }
    }
    
    @IBAction func rightBtnTapped(_ sender: UIButton) {
        if currentPageIndex == 0 {
            collectionView.scrollToNextItem()
            UIView.animate(withDuration: 0.3) {
                self.redBar.frame.origin.x += self.redBar.frame.width
            } completion: { b in
                print("b: \(b)")
                print("self.redBar.frame.origin.x: \(self.redBar.frame.origin.x)")
            }
            

            currentPageIndex = 1
        }
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegate {
    
}

extension UICollectionView {
    
    func scrollToNextItem() {
        let contentOffset = CGFloat(floor(self.contentOffset.x +
                                          self.bounds.size.width))
        self.moveToFrame(contentOffset: contentOffset)
    }
    
    func scrollToPreviousItem() {
        let contentOffset = CGFloat(floor(self.contentOffset.x - self.bounds.size.width))
        self.moveToFrame(contentOffset: contentOffset)
    }
    
    func moveToFrame(contentOffset : CGFloat) {
        self.setContentOffset(CGPoint(x: contentOffset, y: self.contentOffset.y), animated: true)
    }}

