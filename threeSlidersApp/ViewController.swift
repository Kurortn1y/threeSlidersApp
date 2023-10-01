//
//  ViewController.swift
//  threeSlidersApp
//
//  Created by Roman on 01.10.23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redCurrentValue: UILabel!
    @IBOutlet weak var greenCurrentValue: UILabel!
    @IBOutlet weak var blueCurrentValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mainViewSetup()
        valuesSetup()
    }
    
    @IBAction func redSliderAction() {
        updateColor()
        valuesSetup()
    }
    
    @IBAction func greenSliderAction() {
        updateColor()
        valuesSetup()
    }
    
    @IBAction func blueSliderAction() {
        updateColor()
        valuesSetup()
    }
    
    private func mainViewSetup() {
        mainView.layer.cornerRadius = 30
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func updateColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func valuesSetup() {
        redCurrentValue.text = String(format: "%.2f", redSlider.value)
        greenCurrentValue.text = String(format: "%.2f", greenSlider.value)
        blueCurrentValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    
    
}

