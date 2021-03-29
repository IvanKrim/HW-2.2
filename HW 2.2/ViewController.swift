//
//  ViewController.swift
//  HW 2.2
//
//  Created by Kalabishka Ivan on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var displayedColorView: UIView!
    
    @IBOutlet var redSliderValueLabel: UILabel!
    @IBOutlet var greenSliderValueLabel: UILabel!
    @IBOutlet var blueSliderValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        displayedColorView.layer.cornerRadius = displayedColorView.frame.height * 0.1
        
        addRedSliderParametrs()
        addGreenSliderParametrs()
        addBlueSliderParametrs()
        
        addRedSliderValueLabelParametrs()
        addGreenSliderValueLabelParametrs()
        addBlueSliderValueLabelParametrs()
    }
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        redSliderValueLabel.text = String(format: "%.0f", redSlider.value * 255) //round
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenSliderValueLabel.text = String(format: "%.0f", greenSlider.value * 255)
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderValueLabel.text = String(format: "%.0f", blueSlider.value * 255)
        changeColor()
    }
    
    // MARK: - Private Methods
    
    private func addRedSliderValueLabelParametrs() {
        redSliderValueLabel.textColor = .white
        redSliderValueLabel.font = redSliderValueLabel.font.withSize(17)
        redSliderValueLabel.text = String(format: "%.0f", redSlider.value * 255)
    }
    
    private func addGreenSliderValueLabelParametrs() {
        greenSliderValueLabel.textColor = .white
        greenSliderValueLabel.font = greenSliderValueLabel.font.withSize(17)
        greenSliderValueLabel.text = String(format: "%.0f", greenSlider.value * 255)
    }
    
    private func addBlueSliderValueLabelParametrs() {
        blueSliderValueLabel.textColor = .white
        blueSliderValueLabel.font = blueSliderValueLabel.font.withSize(17)
        blueSliderValueLabel.text = String(format: "%.0f", blueSlider.value * 255)
    }
    
    private func addRedSliderParametrs() {
        redSlider.value = 0.4
        redSlider.minimumTrackTintColor = .systemRed
        redSlider.maximumTrackTintColor = .systemGray3
    }
    
    private func addGreenSliderParametrs() {
        greenSlider.value = 0.4
        greenSlider.minimumTrackTintColor = .systemGreen
        greenSlider.maximumTrackTintColor = .systemGray3
    }
    
    private func addBlueSliderParametrs() {
        blueSlider.value = 0.4
        blueSlider.minimumTrackTintColor = .systemBlue
        blueSlider.maximumTrackTintColor = .systemGray3
    }
    
    private func changeColor() {
        let redColour = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        displayedColorView.backgroundColor = UIColor.init(red: redColour, green: greenColor, blue: blueColor, alpha: 1)
    }
}

