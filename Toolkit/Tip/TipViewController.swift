//
//  FirstViewController.swift
//  Toolkit
//
//  Created by Alex Mai on 2/24/18.
//  Copyright © 2018 Alex Mai. All rights reserved.
//

import UIKit

class TipViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var subtotalTF: UITextField!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var eighteenButton: UIButton!
    let formatter = NumberFormatter()


    @IBAction func subtotalText(_ sender: Any) {
        if let subtotalTextmessage = subtotalTF.text {
            subtotalLabel.text = "$ " + subtotalTextmessage
        } else {
            print("Can't display subtotal Text")
        }
    }
    
    @IBAction func fifteenButtonPressed(_ sender: Any) {
        
        fifteenButton.isSelected = true
        eighteenButton.isSelected = false
        twentyButton.isSelected = false
        
        if let subtotalTextmessage = subtotalTF.text {
            
            if !subtotalTextmessage.isEmpty {
                let subtotalAmount = NSDecimalNumber(string: subtotalTextmessage)
                
                if subtotalAmount != NSDecimalNumber.notANumber {
                    let tipAmount = subtotalAmount.multiplying(by: NSDecimalNumber(value: 15).dividing(by: 1000))
                    let totalAmount = subtotalAmount.multiplying(by: NSDecimalNumber(value: 1015).dividing(by: 1000))
                    tipLabel.text = formatter.string(from: tipAmount)
                    totalLabel.text = formatter.string(from: totalAmount)
                } else {
                    print("subtotalAmount must be numbers only")
                }
            } else {
                print("Textfield is empty")
            }
            
            
        } else {
            print("Something wrong with subtotal text field")
        }
        
    }
    @IBAction func eighteenButtonPressed(_ sender: Any) {
        fifteenButton.isSelected = false
        eighteenButton.isSelected = true
        twentyButton.isSelected = false
        
        if let subtotalTextmessage = subtotalTF.text {
            
            if !subtotalTextmessage.isEmpty {
                let subtotalAmount = NSDecimalNumber(string: subtotalTextmessage)
                
                if subtotalAmount != NSDecimalNumber.notANumber {
                    let tipAmount = subtotalAmount.multiplying(by: NSDecimalNumber(value: 18).dividing(by: 1000))
                    let totalAmount = subtotalAmount.multiplying(by: NSDecimalNumber(value: 1018).dividing(by: 1000))
                    tipLabel.text = formatter.string(from: tipAmount)
                    totalLabel.text = formatter.string(from: totalAmount)
                } else {
                    print("subtotalAmount must be numbers only")
                }
            } else {
                print("Textfield is empty")
            }
            
            
        } else {
            print("Something wrong with subtotal text field")
        }
        
    }
    @IBAction func twentyButtonPressed(_ sender: Any) {
        fifteenButton.isSelected = false
        eighteenButton.isSelected = false
        twentyButton.isSelected = true
        
        if let subtotalTextmessage = subtotalTF.text {
            
            if !subtotalTextmessage.isEmpty {
                let subtotalAmount = NSDecimalNumber(string: subtotalTextmessage)
                
                if subtotalAmount != NSDecimalNumber.notANumber {
                    let tipAmount = subtotalAmount.multiplying(by: NSDecimalNumber(value: 18).dividing(by: 1000))
                    let totalAmount = subtotalAmount.multiplying(by: NSDecimalNumber(value: 1018).dividing(by: 1000))
                    tipLabel.text = formatter.string(from: tipAmount)
                    totalLabel.text = formatter.string(from: totalAmount)
                } else {
                    print("subtotalAmount must be numbers only")
                }
            } else {
                print("Textfield is empty")
            }
            
            
        } else {
            print("Something wrong with subtotal text field")
        }
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

