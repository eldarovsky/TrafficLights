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

    private var colorStatus = color.red
    private let isOn: CGFloat = 1.0
    private let isOff: CGFloat = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = isOff
        yellowLightView.alpha = isOff
        greenLightView.alpha = isOff
    }

    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.layer.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.layer.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.layer.frame.width / 2

        startButton.layer.cornerRadius = startButton.layer.frame.height / 2

    }

    @IBAction func pressStartButton() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }

        switch colorStatus {
        case .red:
            greenLightView.alpha = isOff
            redLightView.alpha = isOn
            colorStatus = .yellow
        case .yellow:
            redLightView.alpha = isOff
            yellowLightView.alpha = isOn
            colorStatus = .green
        case .green:
            yellowLightView.alpha = isOff
            greenLightView.alpha = isOn
            colorStatus = .red
        }
    }
}

extension ViewController {
    enum color {
        case red
        case yellow
        case green
    }
}
