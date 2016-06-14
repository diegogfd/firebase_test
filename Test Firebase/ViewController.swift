//
//  ViewController.swift
//  Test Firebase
//
//  Created by Diego Flores Domenech on 14/6/16.
//  Copyright © 2016 Diego Flores Domenech. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didSelectCrash(sender: AnyObject) {
        FIRCrashMessage("aca crasheo")
        fatalError()
    }

    @IBAction func didSelectTrack1(sender: AnyObject) {
        FIRCrashMessage("toco track1")
        FIRAnalytics.logEventWithName("TRACK_1", parameters: ["charact_1" : "el valor", "charact_2": 2/*, "charact_3": ["val_1": 1, "val_2": "pepe pepe"]*/])
    }
    
    @IBAction func didSelectTrack2(sender: AnyObject) {
        FIRCrashMessage("toco track2")
        FIRAnalytics.logEventWithName("TRACK_2", parameters: ["dev" : "diego", "platform": "ios"])
    }
}

