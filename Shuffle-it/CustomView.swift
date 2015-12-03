//
//  CustomeView.swift
//  Shuffle-it
//
//  Created by Gines, Andrea on 12/2/15.
//  Copyright © 2015 Andrea Gines. All rights reserved.
//

import UIKit
import Foundation

class CustomView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    let divider = UIView()
    let label = UILabel()
    let textField = UITextField()
    
    func setLabelText(text:NSString, labelFont:UIFont, textFieldFont:UIFont){
        let size = text.sizeWithAttributes([NSFontAttributeName:labelFont])
        label.frame = CGRect(x:label.frame.origin.x, y:frame.size.height/2-size.height/2, width:label.frame.size.width, height:size.height)
        label.text = text as String
        label.font = labelFont
        textField.frame = CGRect(x:textField.frame.origin.x, y:frame.size.height/2-size.height/2, width:textField.frame.size.width, height:size.height)
        textField.font = textFieldFont
    }
    
    func setBorderColor(color:UIColor){
        divider.backgroundColor = color
        layer.borderColor = color.CGColor
    }
    
    override init(frame: CGRect) {
        super.init(frame:CGRect(x:frame.origin.x,y:frame.origin.y,width:frame.size.width,height:max(frame.size.height,40)))
        label.frame = CGRect(x:5, y:0, width:frame.size.width/5*2-5, height:0)
        label.backgroundColor = UIColor.clearColor()
        label.textColor = UIColor.lightGrayColor()
        label.userInteractionEnabled = false
        label.adjustsFontSizeToFitWidth = true
        addSubview(label)
        textField.frame = CGRect(x:self.label.frame.size.width+5, y:0, width:self.frame.size.width/5*3-5, height:0)
        textField.textColor = UIColor.whiteColor()
        addSubview(textField)
        divider.frame = CGRect(x:self.label.frame.size.width, y:5, width:1, height:frame.size.height-10)
        addSubview(divider)
        
        layer.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.1).CGColor
        layer.borderWidth = 1;
        layer.cornerRadius = 3;
        setLabelText("", labelFont: UIFont.systemFontOfSize(UIFont.systemFontSize()), textFieldFont: UIFont.systemFontOfSize(UIFont.systemFontSize()))
        setBorderColor(UIColor.lightGrayColor())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
