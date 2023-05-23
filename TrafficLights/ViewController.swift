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

    //    private var colorStatus = "red"
    private var colorStatus = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3

        startButton.layer.cornerRadius = 20
    }

    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.layer.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.layer.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.layer.frame.width / 2
    }

    @IBAction func pressStartButton() {
        startButton.setTitle("NEXT", for: .normal)

        if colorStatus == 0 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            colorStatus = 1
        } else if colorStatus == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            colorStatus = 2
        } else if colorStatus == 2 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            colorStatus = 0
        }
    }
}
