//
//  ViewController.swift
//  ModalTransition
//
//  Created by Samuel Goodwin on 3/16/15.
//  Copyright (c) 2015 Roundwall Software. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func exit(segue: UIStoryboardSegue!) {}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "custom" {
                println("\(identifier): \(segue)")
            }
        }
    }
}

class SecondViewController: UIViewController {
    
}