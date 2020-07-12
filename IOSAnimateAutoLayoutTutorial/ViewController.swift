//
//  ViewController.swift
//  IOSAnimateAutoLayoutTutorial
//
//  Created by dylan.k on 2020/07/13.
//  Copyright © 2020 dylan.k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBAction func moveButtonPressed(_ sender: Any) {
        let newConstraint = NSLayoutConstraint(item: redView as Any, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: view.frame.width/2)
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.view.removeConstraint(self.leadingConstraint)
            self.view.addConstraint(newConstraint)
            self.view.layoutIfNeeded()
        }, completion: nil)
        leadingConstraint = newConstraint
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

