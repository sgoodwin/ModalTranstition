//
//  CustomSegue.swift
//  ModalTransition
//
//  Created by Samuel Goodwin on 3/16/15.
//  Copyright (c) 2015 Roundwall Software. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    override func perform() {
        let source = sourceViewController as UIViewController
        let destination = destinationViewController as UIViewController
        let window = UIApplication.sharedApplication().keyWindow!
        
        destination.view.alpha = 0.0
        window.insertSubview(destination.view, belowSubview: source.view)
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            source.view.alpha = 0.0
            destination.view.alpha = 1.0
        }) { (finished) -> Void in
            source.view.alpha = 1.0
            source.presentViewController(destination, animated: false, completion: nil)
        }
    }
}