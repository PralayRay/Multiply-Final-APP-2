//
//  ViewController.swift
//  Multiply Final APP
//
//  Created by Pralay T Ray (Student) on 11/14/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNumberTextField: UITextField!
    
    @IBOutlet weak var secondNumberTextField: UITextField!
    
    @IBOutlet weak var totalNumberLabel: UILabel!
    
    @IBOutlet weak var operaterLabel: UILabel!
    
    @IBOutlet weak var segmentedOutlet: UISegmentedControl!
    
    @IBOutlet weak var tipTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // calculate (RAY)
    
    
    @IBAction func operatorSegmentedControl(_ sender: Any) {
        
        var firstNumber = firstNumberTextField.text!
        var secondNumber = secondNumberTextField.text!
        let firstValue = (firstNumber as NSString).integerValue
        let secondValue = (secondNumber as NSString).integerValue
        var totalAnswer = 0
        switch segmentedOutlet.selectedSegmentIndex {
        case 0:
            totalAnswer = firstValue + secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "+"
        case 1:
            totalAnswer = firstValue - secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "-"
        case 2:
            totalAnswer = firstValue * secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "*"
        case 3:
            totalAnswer = firstValue / secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "/"
        case 4:
            totalAnswer = firstValue % secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "%"
        case 5:
            totalAnswer = firstValue * firstValue
            var totalAnswerTwo = secondValue * secondValue
            totalNumberLabel.text = "\(totalAnswer) and \(totalAnswerTwo)"
        
        default:
            totalAnswer = 0
        }
    }
    
    
    // kasper (pictures)
    // kasper (sliders)
    
    @IBAction func finalTipAction(_ sender: Any) {
        var finalTip:Double = 0.00 // store final into this
        var tempTip = tipTextField.text! // takes number by user
        var tipValue = (tempTip as NSString).doubleValue // allows use) (USE THIS VAR EVERYTIME)
        var holderNumberValue = tipValue * 0.15
        
        finalTip = Double(tipValue + holderNumberValue)
         
        
        totalNumberLabel.text = "\(finalTip)"
    }
    
    @IBAction func sliderOne(_ sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 500
        firstNumberTextField.text = String(Int(sender.value))          }
    @IBAction func sliderTwo(_ sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 500
        secondNumberTextField.text = String(Int(sender.value))          }
    }
    

    


