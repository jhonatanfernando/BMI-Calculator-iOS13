//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Jhonatan Fernando on 2020-04-24.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float,weight: Float)
    {
        let value = (weight / pow(height,2))
        
        if value < 18.5{
            bmi = BMI(value: value, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if value < 24.9{
            bmi = BMI(value: value, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
        else {
            bmi = BMI(value: value, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
}
