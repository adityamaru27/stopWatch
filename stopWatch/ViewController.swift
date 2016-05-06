//
//  ViewController.swift
//  stopWatch
//
//  Created by Aditya Maru on 2016-02-17.
//  Copyright © 2016 Aditya Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var timeCounter = 0;

    @IBOutlet weak var numberDisplay: UILabel!
    
    @IBAction func pause(sender: AnyObject)
    {
        timer.invalidate()
    }
    
    @IBAction func start(sender: AnyObject)
    {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "result", userInfo: nil, repeats: true)
    }
    
    @IBAction func stopReset(sender: AnyObject)
    {
        timer.invalidate()
        timeCounter = 0;
        numberDisplay.text = String(0)
    }
    
    func result()
    {
        timeCounter++
        numberDisplay.text = String(timeCounter)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

