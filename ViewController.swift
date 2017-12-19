//
//  ViewController.swift
//  DrawSomething
//
//  Created by CHAK HO EROS YIP on 19/12/2017.
//  Copyright © 2017 EROS YIP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvas: Canvas!
    
    @IBAction func clear(_ sender: Any) {
        canvas.clearCanvas()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        canvas.clipsToBounds = true
        canvas.isMultipleTouchEnabled = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

