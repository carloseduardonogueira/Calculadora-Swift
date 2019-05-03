//
//  ViewController.swift
//  Calculadora
//
//  Created by student on 04/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number:Int = 0
    var result:Int = 0
    var previousOperator: String = "="

    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayNumber(_ number:Int){
        
        display.text = "\(number)"
        
    }

    @IBAction func clickDigit(_ sender: UIButton) {
        
        number = number * 10 + sender.tag
        
        displayNumber(number)
    }
    
    @IBAction func clickOperation(_ sender: UIButton) {
        
        let selectedOperator = sender.titleLabel?.text
        
        switch (previousOperator){
            case "+":
            result += number
            case"-":
            result -= number
            case "x":
            result *= number
            case "/":
            result /= number
            case "=":
            result = number
        default:
            print("erro: botao invalido!")
        }
        
        number = 0
        displayNumber(result)
        
        if selectedOperator == "="{
         
            self.result = 0
            
        }
        
        previousOperator = selectedOperator!
        
    }
}

