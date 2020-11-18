//
//  ViewController.swift
//  A2_P1_Jin_Yuhan
//
//  Created by Yuhan Jin on 9/17/19.
//  Copyright © 2019 Yuhan Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var process = 0;
    var result:Double = 0;
    var prev:Double = 0;
    var math = false
    
    @IBOutlet weak var output: UILabel!
    @IBAction func myNum(_ sender: UIButton) {
        
        if math == true{
            output.text = String(sender.tag-1)
            result = Double(output.text!)!
            math = false
        }
        else{
            output.text = output.text! + String(sender.tag-1)
            result = Double(output.text!)!
            
        }
        
    }
    
    @IBAction func btn(_ sender: UIButton) {
        
        if output.text != "" && sender.tag != 100{
            
            prev = Double(output.text!)!
            
            
            if sender.tag == 99
            {
                output.text=String(prev)+"-"
            }
            else if sender.tag == 98
            {
               output.text=String(prev)+"+"
            }
            else if sender.tag == 97
            {
                output.text=String(prev)+"*"
            }
            else if sender.tag == 96
            {
                output.text=String(prev)+"/"
            }
            process = sender.tag
            math = true;
        }
        else if sender.tag == 100{
            if process == 99{
                output.text = String(prev - result)
                if (result > 0.0) {
                    output.backgroundColor = UIColor.red
                }else{
                    output.backgroundColor = UIColor.white
                }
                
            }
            else if process == 98{
                output.text = String(prev + result)
                if (result > 0.0) {
                    output.backgroundColor = UIColor.red
                }else{
                    output.backgroundColor = UIColor.white
                }
            }
            else if process == 97{
                output.text = String(prev * result)
                if (result > 0.0) {
                    output.backgroundColor = UIColor.white
                }else{
                    output.backgroundColor = UIColor.white
                }
                
            }
            else if process == 96{
                output.text = String(prev / result)
                if (result > 0.0) {
                    output.backgroundColor = UIColor.red
                }else{
                    output.backgroundColor = UIColor.white
                }
                
            }
        }}

    @IBAction func Clear(_ sender: UIButton) {
        output.text = ""
        process = 0;
        result = 0;
        prev = 0;
    }
    @IBAction func Button(_ sender: UIButton) {
        output.text = output.text! + "."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

