//
//  ViewController.swift
//  ColorChanges
//
//  Created by Нина Ефимова on 25.05.2020.
//  Copyright © 2020 Efim Nina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        redColorSlider.tintColor = .red
        greenColorSlider.tintColor = .green
        blueColorSlider.tintColor = .blue
        
        redLabel.text = String("Red: \(redColorSlider.value) ")
        greenLabel.text = String("Green: \(greenColorSlider.value)")
        blueLabel.text = String("Blue: \(blueColorSlider.value) ")
        
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
        
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
        
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSliderChanges() {
        redLabel.text = String(format: "Red: %.2f ", redColorSlider.value )
        greenLabel.text = String(format: "Green: %.2f ", greenColorSlider.value)
        blueLabel.text = String(format: "Blue: %.2f ", blueColorSlider.value)
        changeColor()
    }
}

