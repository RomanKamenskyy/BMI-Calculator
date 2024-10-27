//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by roman
//
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more", color: .blue)
        } else if bmiValue < 24.5{
            bmi = BMI(value: bmiValue, advice: "middle", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
