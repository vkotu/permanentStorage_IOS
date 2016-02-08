//
//  ViewController.swift
//  permanentStorage_IOS
//
//  Created by Venkat Kotu on 2/7/16.
//  Copyright © 2016 VenkatKotu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //once below line gets executed once kotu will be saved permanently in the iphone unless we get rid of it
        //NSUserDefaults.standardUserDefaults().setObject("kotu", forKey: "name")
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name")!
        print(name)
        
        let arr = [1,2,3]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        let recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array")!
        print(recalledArray[2])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

