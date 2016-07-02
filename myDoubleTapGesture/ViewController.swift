//
//  ViewController.swift
//  myDoubleTapGesture
//
//  Created by wealthyjalloh on 02/07/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: "handleTap:")
        tapGesture.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(tapGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleTap(sender: UIGestureRecognizer) {
        if (sender.view?.contentMode == .ScaleAspectFit) {
            sender.view?.contentMode = .Center
        } else {
            sender.view?.contentMode = .ScaleAspectFit
        }
    }
    
    


}

