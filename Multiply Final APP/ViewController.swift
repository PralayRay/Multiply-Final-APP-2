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
    
    @IBOutlet weak var marioKartImageView: UIImageView!
    
    var totalAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    // calculate (RAY)
    func updateImageView(for number: Int) {
        if totalAnswer == 64 {
            marioKartImageView.image = UIImage (named: "mario")
        }

        else if totalAnswer % 2 == 0 {
               marioKartImageView.image = UIImage(named: "funny")
           } else {
               marioKartImageView.image = UIImage(named: "funnier")
           }
        
            if  (totalAnswer % 2 == 0) {
                view.backgroundColor = .lightGray
                 } else {
                     view.backgroundColor = .systemPink
                 }

        
        
       }
    
    
    
    @IBAction func operatorSegmentedControl(_ sender: Any) {
        
        var firstNumber = firstNumberTextField.text!
        var secondNumber = secondNumberTextField.text!
        let firstValue = (firstNumber as NSString).integerValue
        let secondValue = (secondNumber as NSString).integerValue
        // var totalAnswer = 0
        switch segmentedOutlet.selectedSegmentIndex {
        case 0:
            totalAnswer = firstValue + secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "+"
            updateImageView(for: totalAnswer)
        case 1:
            totalAnswer = firstValue - secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "-"
            updateImageView(for: totalAnswer)
        case 2:
            totalAnswer = firstValue * secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "*"
            updateImageView(for: totalAnswer)
        case 3:
            totalAnswer = firstValue / secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "/"
            updateImageView(for: totalAnswer)
        case 4:
            totalAnswer = firstValue % secondValue
            totalNumberLabel.text = "\(totalAnswer)"
            operaterLabel.text = "%"
            updateImageView(for: totalAnswer)
        case 5:
            totalAnswer = firstValue * firstValue
            var totalAnswerTwo = secondValue * secondValue
            totalNumberLabel.text = "\(totalAnswer) and \(totalAnswerTwo)"
            updateImageView(for: totalAnswer)
        
        default:
            totalAnswer = 0
            updateImageView(for: totalAnswer)
            
            
            
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
        secondNumberTextField.text = String(Int(sender.value))
    }

//    if totalNumberLabel.text == 64 {
//        marioKartImageView.image = UIImage(named: "mario")
//
//    }
//    else if  % 2 == 0 {
//        marioKartImageView.image = UIImage(named: "funny")
//         }
//    else {
//        marioKartImageView.image = UIImage(named: "funnier")
//         }
//
//    if  (totalAnswer % 2 == 0) {
//        view.backgroundColor = .blue
//         } else {
//             view.backgroundColor = .green
//         }

    
    
}
    

    


