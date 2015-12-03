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

class ViewController: UIViewController, UICollectionViewDataSource {

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
    //pragma mark - UICollectionViewDataSource
   // #pragma mark - UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1;
    }
    
    func collectionView(collectionView: UICollectionView, numberOfSectionsInCollectionView section: Int) -> Int {
        return 1;
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell = UICollectionViewCell()
        
        return cell;
    }
    
    
    /*
    - (NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.imagesArray count];
    }
    
    -(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
    {
    RVCollectionViewCell *cell = (RVCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"ItemIdentifier" forIndexPath:indexPath];
    cell.imageView = self.imagesArray[indexPath.item];
    cell.imageName = self.imageNamesArray[indexPath.item];
    return cell;
    }*/


}

