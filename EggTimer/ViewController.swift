//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var timer = Timer()
    var timerIsRunning = false
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        let hardness = sender.currentTitle!
        
        eggTimer(time: eggTimes[hardness]!)
    }
    
    func eggTimer(time: Int) {
        var runCount = 0

        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        print("Cook Time is: \(runCount)")
        runCount += 1

        if runCount == time {
            timer.invalidate()
        }
    }
    }
    
}
