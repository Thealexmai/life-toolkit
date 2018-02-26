//
//  SecondViewController.swift
//  Toolkit
//
//  Created by Alex Mai on 2/24/18.
//  Copyright © 2018 Alex Mai. All rights reserved.
//

import UIKit

class DiscountViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var discountAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var discountTextField: UITextField!
    let formatter = NumberFormatter()
    
    @IBAction func priceTextField(_ sender: Any) {
        
        if let textMessage = priceTextField.text {
            
            priceLabel.text = formatter.string(from: NSDecimalNumber(string: textMessage ))
            
            //if a user is editing price while already having filled out discount percent
            if let discountText = discountTextField.text, !discountText.isEmpty {
                discountTextField(self)
            }
        } else {
            print("Something wrong with price text field")
        }
        
    }

    @IBAction func discountTextField(_ sender: Any) {
        
        if let priceTextMessage = priceTextField.text {
            if !priceTextMessage.isEmpty {
                if let textMessage = discountTextField.text {
                    if !textMessage.isEmpty {
                    
                        let priceAmount = NSDecimalNumber(string: priceTextMessage)
                        
                        if let discountPercentage = Int(textMessage) {
                            let discountAmount = priceAmount.multiplying(by: NSDecimalNumber(value: discountPercentage).dividing(by: 100))
                            
                            discountAmountLabel.text = "- " + formatter.string(from: discountAmount)!
                            
                            totalLabel.text = formatter.string(from: priceAmount.subtracting(discountAmount))
                            
                        } else {
                            print("Need a number in discount text field")
                        }
                    } else {
                        print("discount field empty")
                    }
                    
                } else {
                    print("Something wrong with discount text field")
                }
            } else {
                print("Price field empty")
            }
        } else {
            print("Something wrong with price text field")
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        priceTextField.resignFirstResponder()
        discountTextField.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatter.numberStyle = .currency
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

