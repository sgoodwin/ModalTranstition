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
        
        source.presentViewController(destination, animated: true, completion: nil)
    }
}