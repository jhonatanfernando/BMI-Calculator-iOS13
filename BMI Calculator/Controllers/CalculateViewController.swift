//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        let height =  String(format:"%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    
    @IBAction func sliderWeigthChanged(_ sender: UISlider) {
        let weight = String(format:"%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculateBMI(height: height,weight: weight)
      
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinatinVC = segue.destination as! ResultsViewController
        
        destinatinVC.bmiValue = calculateBrain.getBMIValue()
        destinatinVC.advice = calculateBrain.getAdvice();
        destinatinVC.color = calculateBrain.getColor();
    }
    
    
}

