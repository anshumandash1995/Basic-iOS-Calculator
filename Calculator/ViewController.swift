//
//  ViewController.swift
//  Calculator
//
//  Created by Anshuman Dash on 6/29/18.
//  Copyright © 2018 Anshuman Dash All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Enums
    
    enum Operations {
        case divide
        case multiply
        case subtract
        case add
    }
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var numbersTextField: UITextField!
    @IBOutlet weak var equalsButton: ConfigureUiButton!
    @IBOutlet weak var divideButton: ConfigureUiButton!
    @IBOutlet weak var multiplyButton: ConfigureUiButton!
    @IBOutlet weak var subtractButton: ConfigureUiButton!
    @IBOutlet weak var addButton: ConfigureUiButton!
    
    //MARK:- Instance Variables
    
    var currentOperation:Operations?
    
    var firstNumber = ""
    var secondNumber = ""
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    //MARK:- IBActions
    
    @IBAction func digitsButtonTapped(_ sender:UIButton){
        if currentOperation == nil {
            firstNumber = firstNumber + "\(sender.tag)"
            numbersTextField.text = firstNumber
        }
        else {
            secondNumber = secondNumber + "\(sender.tag)"
            numbersTextField.text = secondNumber
        }
    }
    
    @IBAction func allClearButtonTapped(_ sender: Any) {
        numbersTextField.text = "0"
        firstNumber = ""
        secondNumber = ""
        currentOperation = nil
        addButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        subtractButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        multiplyButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        divideButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
    }
    
    @IBAction func negativeSignButtonTapped(_ sender: Any) {
        if firstNumber != "" && !firstNumber.contains("-") && secondNumber == ""{
            firstNumber = "-" + firstNumber
            numbersTextField.text = firstNumber
        }
        else{
            numbersTextField.text = firstNumber
        }
        
        if secondNumber != "" && !secondNumber.contains("-"){
            secondNumber = "-" + secondNumber
            numbersTextField.text = secondNumber
        }
        
        addButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        subtractButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        multiplyButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        divideButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
    }
    
    @IBAction func percentButtonTapped(_ sender: Any) {
        if firstNumber != "" {
            firstNumber = String(Float(firstNumber)! / 100.0)
            numbersTextField.text = firstNumber
        }
        
        if secondNumber != "" {
            secondNumber = String(Float(secondNumber)! / 100.0)
            numbersTextField.text = secondNumber
        }
        
        addButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        subtractButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        multiplyButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        divideButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
    }
    
    @IBAction func divideButtonTapped(_ sender: UIButton) {
        currentOperation = .divide
        divideButton.backgroundColor = UIColor.init(red: 235.0, green: 235.0, blue: 241.0, alpha: 1.0)
        addButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        subtractButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        multiplyButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
    }

    @IBAction func multiplyButtonTapped(_ sender: UIButton) {
        currentOperation = .multiply
        multiplyButton.backgroundColor = UIColor.init(red: 235.0, green: 235.0, blue: 241.0, alpha: 1.0)
        addButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        subtractButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        divideButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
    }
    
    @IBAction func subtractButtonTapped(_ sender: UIButton) {
        currentOperation = .subtract
        subtractButton.backgroundColor = UIColor.init(red: 235.0, green: 235.0, blue: 241.0, alpha: 1.0)
        addButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        multiplyButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        divideButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        currentOperation = .add
        addButton.backgroundColor = UIColor.init(red: 235.0, green: 235.0, blue: 241.0, alpha: 1.0)
        subtractButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        multiplyButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        divideButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
    }
    
    @IBAction func equalsButtonTapped(_ sender: UIButton) {
        addButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        subtractButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        multiplyButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        divideButton.backgroundColor = #colorLiteral(red: 0.9939519763, green: 0.6533548832, blue: 0.1586906612, alpha: 1)
        
        if currentOperation == nil || secondNumber.count == 0 {
            return
        }
        
        guard let first = Float(firstNumber) else {
            numbersTextField.text = "Error"
            return
        }
        guard let second = Float(secondNumber) else {
            numbersTextField.text = "Error"
            return
        }
        
        switch currentOperation {
        case .add?:
            numbersTextField.text = String(first + second)
            firstNumber = numbersTextField.text!
            secondNumber = ""

        case .subtract?:
            numbersTextField.text = String(first - second)
            firstNumber = numbersTextField.text!
            secondNumber = ""
        case .multiply?:
            numbersTextField.text = String(first * second)
            firstNumber = numbersTextField.text!
            secondNumber = ""
        case .divide?:
            if secondNumber == "0"{
                numbersTextField.text = "Infinity"
            }
            else{
                numbersTextField.text = String(first / second)
                firstNumber = numbersTextField.text!
                secondNumber = ""
            }
        case .none:
            return
        }
    }
    
    @IBAction func decimalButtonTapped(_ sender: Any) {
        if firstNumber != "" {
            if !firstNumber.contains("."){
                firstNumber = firstNumber + "."
                numbersTextField.text = firstNumber
            }
        }
        
        if secondNumber != "" {
            if !secondNumber.contains("."){
                secondNumber = secondNumber + "."
                numbersTextField.text = secondNumber
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
