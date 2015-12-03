//
//  CollectionViewCell.swift
//  Shuffle-it
//
//  Created by Gines, Andrea on 12/3/15.
//  Copyright © 2015 Andrea Gines. All rights reserved.
//

import UIKit
import Foundation

class CollectionViewCell: UICollectionViewCell {
    
    var imageName:NSString = NSString()
    var imageView:UIImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    func setImageView(imageView: UIImageView)
    {
        let imageView = imageView
        addSubview(imageView)
    
    }
*/
    
}
