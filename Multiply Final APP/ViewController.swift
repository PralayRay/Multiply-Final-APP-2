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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // calculate (RAY)
    
    @IBAction func operatorSegmentedControl(_ sender: Any) {
        switch segmentedOutlet.selectedSegmentIndex {
        case 0:
            greeting = "Hola"
        case 1:
            greeting = "Kem Cho"
        case 2:
            greeting = "Namaste"
        case 3:
        case 4:
        case 5:
        case 6:
        }
        
    }
    
    // kasper (pictures)
    // kasper (sliders)
    // kasper (tip)
    

}

