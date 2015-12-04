//
//  CollectionViewLayout.swift
//  Shuffle-it
//
//  Created by Gines, Andrea on 12/4/15.
//  Copyright © 2015 Andrea Gines. All rights reserved.
//

import UIKit
import Foundation

class CollectionViewLayout: UICollectionViewFlowLayout {
    
    var superView = UIView()
    
    override init() {
        super.init()
        initialize()

    }

    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder : aDecoder)
        initialize()
    }
    
    func initialize() {
        itemSize = CGSizeMake(100.0, 153.0)
        sectionInset = UIEdgeInsetsMake(0, 60, 0, 60)
        scrollDirection = UICollectionViewScrollDirection.Horizontal
    }
    /*
    func prepareLayout() {
        superView = self.collectionViewLayout.superView
    }*/
    func layoutAttributesForElementsInRect(_ rect: CGRect) -> [UICollectionViewLayoutAttributes]?{
        
        var array:NSArray  = super.layoutAttributesForElementsInRect(rect)!
        var modifiedLayoutAttributesArray: NSMutableArray = NSMutableArray(array: array)
        var horizontalCenter = CGRectGetWidth(self.collectionView!.bounds) / 2.0
        
        array.enumerateObjectsUsingBlock({ layoutAttributes, idx, stop in
            
            let pointInCollectionView = layoutAttributes.frame.origin;
            var pointInMainView = self.superView.convertPoint(pointInCollectionView, fromView: self.collectionView)
            
            
        
        })
        //let md = UICollectionViewLayoutAttributes(modifiedLayoutAttributesArray)
        //return modifiedLayoutAttributesArray
    }
    
}
