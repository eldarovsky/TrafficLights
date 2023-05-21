//
//  ViewController.swift
//  TrafficLights
//
//  Created by Эльдар Абдуллин on 20.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!

    var colorStatus = "red"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3

        redLightView.layer.cornerRadius = 65
        yellowLightView.layer.cornerRadius = 65
        greenLightView.layer.cornerRadius = 65
        startButton.layer.cornerRadius = 20
    }

    @IBAction func pressStartButton() {
        startButton.setTitle(startButton.titleLabel?.text == "START" ? "NEXT" : "NEXT", for: .normal)

        switch colorStatus {
        case "red":
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            colorStatus = "yellow"
        case "yellow":
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            colorStatus = "green"
        default:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            colorStatus = "red"
        }
    }
}
