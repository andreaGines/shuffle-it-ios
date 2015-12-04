//
//  ViewController.swift
//  Shuffle-it
//
//  Created by Andrea Gines on 11/1/15.
//  Copyright © 2015 Andrea Gines. All rights reserved.
//

import UIKit
import Foundation

//var arr:NSArray? = NSArray();

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    //var arr:NSArray? = NSArray();
    
    var imagesArray:NSMutableArray = []
    var imageNamesArray: NSMutableArray = []
    var collectionViewLayout = CollectionViewLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initImages()
        //collectionView.registerClass(CollectionViewCell, forCellWithReuseIdentifier: "ItemIdentifier")
        collectionView.indicatorStyle = UIScrollViewIndicatorStyle.White
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // - UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count;
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("ItemIdentifier", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.imageView = imagesArray[indexPath.item] as! UIImageView
        cell.imageName = imageNamesArray[indexPath.item] as! NSString
       
        return cell;
    }
    /*
    optional func numberOfSectionsInCollectionView(_ collectionView: UICollectionView) -> Int
    {
    
    }
    */
    
    //  - UICollectionViewDelegate
    optional func collectionView(_ collectionView: UICollectionView,
        didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let selectedImageView = imagesArray[indexPath.item]
        print("selected \(selectedImageView)")
    }
    optional func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("scrollView did end deceleration")
        printCurrentCard()
    }
    
    optional func scrollViewDidEndDragging(_ scrollView: UIScrollView,
        willDecelerate decelerate: Bool){
            
            if(!decelerate) {
                print("scrollViewDidEndDragging")
                printCurrentCard()
            }
    }
    func printCurrentCard() {
        let visibleCards: NSArray = collectionView.visibleCells()
        //var idx
        visibleCards.enumerateObjectsUsingBlock({ visibleCell, idx, stop in
                //let image = visibleCell as CollectionViewCell
            print("visible cell: \(visibleCell.imageName)")
        
        })
        
    }
    
    func initImages() {
        var imageNames:NSArray = ["2.png", "3.png", "4.png", "5.png","6.png","7.png","8.png","9.png","10.png","11.png","12.png", "13.png", "14.png"]
        
        
        for var i = 0, j = 0; i < imageNames.count * 3; ++i, ++j {
            var imageName = imageNames[j % imageNames.count] as! String
            imageNamesArray[i] = imageName
            imagesArray.addObject(UIImageView(image: UIImage(contentsOfFile: imageName)))
        }
        

    }
    
    //var arrayOfImages: NSArray = [UIImage(imageLiteral : "2.png"), ]


}

