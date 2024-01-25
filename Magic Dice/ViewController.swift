//
//  ViewController.swift
//  Magic Dice
//
//  Created by Alumno on 22/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    // - Oulets
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    @IBAction func guessAction(_ sender: Any) {
        let randomNumber = "\(Int.random(in: 1...6))"
        let userNumber = numberTextField.text
        
        numberLabel.text = randomNumber
        
        if randomNumber == userNumber {
            messageLabel.text = "Acertaste"
            background.backgroundColor = UIColor.green
        } else {
            messageLabel.text = "Fallaste"
            background.backgroundColor = UIColor.red
        }
        
    }
    
}

