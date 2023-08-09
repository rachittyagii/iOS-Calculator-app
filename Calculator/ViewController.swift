//
//  ViewController.swift
//  Calculator
//
//  Created by Rachit Tyagi on 08/08/23.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var CalculatorWorkings: UILabel!
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false;
    var operation = 0;
 
    @IBOutlet weak var lable: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingMath == true
        {
            lable.text = String(sender.tag-1)
            numberOnScreen = Double(lable.text!)!
            performingMath = false
        }
        else
        {
            lable.text = lable.text! +
                String(sender.tag-1)
            numberOnScreen = Double(lable.text!)!
                
        }
}
    @IBAction func Calculate(_ sender: UIButton)
    {
        if lable.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(lable.text!)!
            if sender.tag == 12
            {
                lable.text = "/"
            }
            else if  sender.tag == 13
            {
                lable.text = "x"
            }
            else if  sender.tag == 14
            {
                lable.text = "-"
            }
            else if  sender.tag == 15
            {
                lable.text = "+"
            }
            operation = sender.tag
            performingMath = true
        }
        
        else if sender.tag == 16
        {
            if operation == 12
            {
                lable.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13
            {
                lable.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                lable.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15
            {
                lable.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            lable.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    }

