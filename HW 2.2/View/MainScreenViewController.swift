//
//  MainScreenViewController.swift
//  HW 2.2
//
//  Created by Kalabishka Ivan on 11.04.2021.
//

import UIKit

protocol ColorViewDeligate {
    func returnColor(red: CGFloat, green: CGFloat, blue: CGFloat)
}

class MainScreenViewController: UIViewController {
    var rgbColor =
        UIColor(
            red: CGFloat(1),
            green: CGFloat(1),
            blue: CGFloat(0.3),
            alpha: CGFloat(1)
        )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = rgbColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {return}
        settingsVC.rgbColor = rgbColor
        settingsVC.deligate = self
    }
}

extension MainScreenViewController: ColorViewDeligate {
    func returnColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        rgbColor = UIColor (red: red, green: green, blue: blue, alpha: 1)
        
        view.backgroundColor = rgbColor
    }
}

