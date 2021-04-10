//
//  ViewController.swift
//  HW 2.2
//
//  Created by Kalabishka Ivan on 26.03.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = colorView.frame.height * 0.1
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        setValue(for: redSliderLabel, greenSliderLabel, blueSliderLabel)
    }
    
    // изменение цветов слайдера
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        // если слайдер который мы дергаем является redslider то вызываем метод setValue(for: redSliderLabel)- передаем значение из красного слайдера в красный лейбл
        switch sender {
        case redSlider: setValue(for: redSliderLabel)
        case greenSlider: setValue(for: greenSliderLabel)
        default:
            setValue(for: blueSliderLabel)
        }
    }
    
    // цвет вью
    // все свойства и методы которые реализуют внутреннюю логику - приватные
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    // передача значений в лейблы
    // вариативный параметр UILabel... ( Мы можем передавать сколько угодно лейблов)
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redSliderLabel:
                label.text = string(from: redSlider)
            case greenSliderLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
            }
        }
    }
    
    // значения RGB
    private func string(from slider: UISlider) -> String {
        String(format: "%.0f", slider.value * 255)
    }
}

