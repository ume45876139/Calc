//
//  ViewController.swift
//  Auto Layout
//
//  Created by 梅北文仁 on 2018/08/19.
//  Copyright © 2018年 梅北文仁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        text_label.text = ""
        prevNumLabel.text = ""
        calc_label.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var text_label: UILabel!
    @IBOutlet weak var prevNumLabel: UILabel!
    @IBOutlet weak var calc_label: UILabel!
    
 

    @IBAction func numButtonPushed(_ sender: UIButton) {
        text_label.text! += sender.titleLabel!.text!
    }
    
    @IBAction func calcSignPushed(_ sender: UIButton) {
        calc_label.text =
            sender.titleLabel!.text!
        prevNumLabel.text = text_label.text
        text_label.text = ""
    }
    
    @IBAction func equalPushed(_ sender: Any) {
        if prevNumLabel.text != nil && text_label.text! != nil{
            
            if calc_label.text == "+"{
                var textlabel:Double = Double(text_label!.text!)!
                let prevNum :Double = Double(prevNumLabel!.text!)!
                textlabel = prevNum + textlabel
                text_label.text = String (textlabel)
                
            }else if calc_label.text == "×"{
                var textlabel:Double = Double(text_label!.text!)!
                let prevNum :Double = Double(prevNumLabel!.text!)!
                textlabel = prevNum * textlabel
                text_label.text = String (textlabel)
                
                }
            else if calc_label.text == "÷" {
                var textlabel:Double = Double(text_label!.text!)!
                let prevNum :Double = Double(prevNumLabel!.text!)!
                textlabel = prevNum / textlabel
                text_label.text = String (textlabel)
                
            }
            else if calc_label.text == "-" {
                var textlabel:Double = Double(text_label!.text!)!
                let prevNum :Double = Double(prevNumLabel!.text!)!
                textlabel = prevNum - textlabel
                text_label.text = String (textlabel)
            }
        }
    }
    

    
    @IBAction func clearPressed(_ sender: Any) {
        clear()
    }
    func clear (){
        prevNumLabel.text = ""
        calc_label.text = ""
        text_label.text = ""
    }
}

