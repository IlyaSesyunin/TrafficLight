//
//  ViewController.swift
//  TrafficLight
//
//  Created by Илья Сесюнин on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        trafficLightButton.layer.cornerRadius = 10
    }
    
    var numbersOfTaps = 0
    
    @IBAction func trafficLightButtonTapped() {
        numbersOfTaps += 1
        trafficLightButton.setTitle("NEXT", for: .normal)
        
        if numbersOfTaps == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        }
        else if numbersOfTaps == 2 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        }
        else if numbersOfTaps == 3 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            numbersOfTaps = 0
        }
    }
}

