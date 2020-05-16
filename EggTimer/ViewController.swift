//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eggLabel: UILabel!
    
    let eggTimes = ["Soft": 3, "Medium": 5, "Hard": 7]
    
    var timer = Timer()
    var timerIsRunning = false
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        let hardness = sender.currentTitle!
        
        eggTimer(time: eggTimes[hardness]!)
    }
    
    func eggTimer(time: Int) {
        
        timer.invalidate()
        
        var runCount = time

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        print("Cook Time is: \(runCount)")
        runCount -= 1

        if runCount == 0 {
            timer.invalidate()
            self.eggLabel.text = "Done!"
        }
    }
    }
    
}
