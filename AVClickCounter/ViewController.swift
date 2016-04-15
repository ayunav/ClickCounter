//
//  ViewController.swift
//  AVClickCounter
//
//  Created by Ayuna Vogel on 4/15/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    
    var count = 0
    var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Coordinates
        
        let width: CGFloat = 60
        let height: CGFloat = 60
        let xCenter: CGFloat = (self.view.frame.size.width - width)/2; // align horizontally |
        let yCenter: CGFloat = (self.view.frame.size.height - height)/2 // align vertically  -
        
        
        // MARK: Label
        
        let label = UILabel()
        label.frame = CGRectMake(xCenter, 150, width, height)
        label.text = "0"
        
        // text alignment
        
        // http://stackoverflow.com/questions/5686631/how-do-you-programatically-center-the-alignment-of-a-text-label-for-ios
        
        // https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSString_Class/index.html#//apple_ref/swift/enum/c:@E@NSTextAlignment
        
        label.textAlignment = .Center
        
        self.view.addSubview(label)
        self.label = label
        
        
        // MARK: Button
        
        let button = UIButton()
        
        // http://stackoverflow.com/questions/12387988/how-to-programmatically-allign-a-button-in-ios-applications
        
        button.frame = CGRectMake(xCenter, yCenter, width, height)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }


}

