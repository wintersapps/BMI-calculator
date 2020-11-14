//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Patryk Winter on 14/11/2020.
//

import UIKit

struct CalculatorBrain {
    
    private var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Start eating more!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Start eating less!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBMIAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    }
}
