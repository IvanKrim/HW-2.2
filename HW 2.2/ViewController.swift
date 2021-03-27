//
//  ViewController.swift
//  HW 2.2
//
//  Created by Kalabishka Ivan on 26.03.2021.
//


// MARK: - IB Outlets
// MARK: - Public Properties
// MARK: - Private Properties
// MARK: - Initializers
// MARK: - Override Methods
// MARK: - IB Action
// MARK: - Public Methods
// MARK: - Private Methods


import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var displayedColorView: UIView!
    
    @IBOutlet var redColourLabel: UILabel!
    @IBOutlet var greenColourLabel: UILabel!
    @IBOutlet var blueColourLabel: UILabel!
    
    @IBOutlet var redSliderValueLabel: UILabel!
    @IBOutlet var greenSliderValueLabel: UILabel!
    @IBOutlet var blueSliderValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label Colour в Private Methods !!!
        redColourLabel.text = "Red:"
        redColourLabel.font = redColourLabel.font.withSize(17)
        
        greenColourLabel.text = "Green:"
        greenColourLabel.font = greenColourLabel.font.withSize(17)
        
        blueColourLabel.text = "Blue:"
        blueColourLabel.font = blueColourLabel.font.withSize(17)
        
    
        
        displayedColorView.layer.cornerRadius = displayedColorView.frame.height * 0.1
        
        addRedSliderParametrs()
        addGreenSliderParametrs()
        addBlueSliderParametrs()
        
        
        
        
        
        
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
    private func addRedSliderParametrs() {
        redSlider.value = 0.1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .systemRed
        redSlider.maximumTrackTintColor = .systemGray3
        
        redSliderValueLabel.font = redSliderValueLabel.font.withSize(17)
        redSliderValueLabel.text = String(redSlider.value)
    }
    
    private func addGreenSliderParametrs(){
        greenSlider.value = 0.2
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .systemGreen
        greenSlider.maximumTrackTintColor = .systemGray3
        
        greenSliderValueLabel.font = greenSliderValueLabel.font.withSize(17)
        greenSliderValueLabel.text = String(greenSlider.value)
    }
    
    private func addBlueSliderParametrs(){
        blueSlider.value = 0.3
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .systemBlue
        blueSlider.maximumTrackTintColor = .systemGray3
        
        blueSliderValueLabel.font = blueSliderValueLabel.font.withSize(17)
        blueSliderValueLabel.text = String(blueSlider.value)
    }
    
    private func changeColor() {
        let redColour = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        let backgroundColor = UIColor.init(red: redColour, green: greenColor, blue: blueColor, alpha: 1)
        
        displayedColorView.backgroundColor = backgroundColor
    }
    
    
}

