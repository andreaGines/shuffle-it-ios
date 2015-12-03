//
//  ViewController.swift
//  Shuffle-it
//
//  Created by Andrea Gines on 11/1/15.
//  Copyright © 2015 Andrea Gines. All rights reserved.
//

import UIKit
import Foundation

var arr:NSArray? = NSArray();

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    //var arr:NSArray? = NSArray();
    
    var imagesArray = NSMutableArray(array: arr!)
    var imageNamesArray = NSMutableArray(array: arr!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let username = CustomView(frame:CGRect(x:15, y:UIApplication.sharedApplication().statusBarFrame.size.height + 15, width:view.frame.size.width-30, height:40))
        //username.setLabelText("Username", labelFont: UIFont(name: "Helvetica",size: 14)!, textFieldFont: UIFont(name: "Helvetica",size: 14)!)
        //view.addSubview(username)
        
        
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
        didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        let selectedImageView = imagesArray[indexPath.item]
        print("selected \(selectedImageView)")
    }
    optional func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
    {
        print("scrollView did end deceleration")
        printCurrentCard()
    }
    
    optional func scrollViewDidEndDragging(_ scrollView: UIScrollView,
        willDecelerate decelerate: Bool){
            
            if(!decelerate)
            {
                print("scrollViewDidEndDragging")
                printCurrentCard()
            }
    }
    func printCurrentCard()
    {
        let visibleCards: NSArray = collectionView.visibleCells()
        //var idx
        visibleCards.enumerateObjectsUsingBlock({ visibleCell, idx, stop in
                //let image = visibleCell as CollectionViewCell
            print("visible cell: \(visibleCell.imageName)")
        
        })
        
    }
    
    //var arrayOfImages: NSArray = [UIImage(imageLiteral : "2.png"), ]


}

