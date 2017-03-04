//
//  ViewController.swift
//  PlaybackSliderDev
//
//  Created by Sota Yokoe on 2017/03/04.
//  Copyright © 2017年 Sota Yokoe. All rights reserved.
//

import Cocoa
import PlaybackSlider

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let slider = PlaybackSlider()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

