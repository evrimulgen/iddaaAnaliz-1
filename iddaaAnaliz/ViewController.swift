//
//  ViewController.swift
//  iddaaAnaliz
//
//  Created by umut toker on 04/04/16.
//  Copyright © 2016 aucorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: Actions
    @IBAction func changeButtonAction(sender: UIButton) {
        mealNameLabel.text = "This is the Default texts"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }


    // MARK: UITextFieldDelegate

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // this gonna hide keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
}

