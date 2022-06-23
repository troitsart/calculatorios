//
//  ViewController.swift
//  keklol
//
//  Created by Артём Троицкий on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var digit:Double = 0
    var math_operation:Bool = false
    var math = 0
    //переменная результата
    @IBOutlet weak var result: UILabel!
    
    //реакция на нажатие кнопки
    @IBAction func digits(_ sender: UIButton) {
        if result.text == "0" {
            result.text = String(sender.tag)
        }
        else {
        result.text! += String(sender.tag)
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if sender.tag == 15 {
            result.text = "0"
            digit = 0
        }
        else if sender.tag >= 11 && sender.tag <= 14 {
            
            digit = Double(result.text!)!
            math_operation = true
            math = sender.tag
            result.text = "0"
            print(digit)
        }
        else if sender.tag == 10 || math_operation {
            if math == 11 {
                result.text = String(Double(result.text!)! + digit)
            }
            else if math == 12 {
                result.text = String(digit - Double(result.text!)!)
            }
            else if math == 13 {
                result.text = String(Double(result.text!)! * digit)
            }
            else if math == 14 {
                result.text = String(digit / Double(result.text!)!)
            }
            digit = 0
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

