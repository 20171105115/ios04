//
//  ViewController.swift
//  ios04
//
//  Created by 朱博宇 on 2018/9/21.
//  Copyright © 2018年 朱博宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var temp = 0
    var flag = 0
    @IBOutlet weak var number: UITextField!
    
    @IBAction func Num1(_ sender: Any) {
        number.text = number.text!+"1"
    }
    @IBAction func Nnm2(_ sender: Any) {
        number.text = number.text!+"2"
    }
    @IBAction func Num3(_ sender: Any) {
        number.text = number.text!+"3"
    }
    @IBAction func Sum4(_ sender: Any) {
        number.text = number.text!+"4"
    }
    @IBAction func Sum5(_ sender: Any) {
        number.text = number.text!+"5"
    }
    @IBAction func Sum6(_ sender: Any) {
        number.text = number.text!+"6"
    }
    @IBAction func Num7(_ sender: Any) {
        number.text = number.text!+"7"
    }
    @IBAction func Num8(_ sender: Any) {
        number.text = number.text!+"8"
    }
    @IBAction func Num9(_ sender: Any) {
        number.text = number.text!+"9"
    }
    @IBAction func Num0(_ sender: Any) {
        number.text = number.text!+"0"
    }
    @IBAction func equal(_ sender: Any) {
        var sum = 0
        switch flag {
        case 1:
            sum = temp + Int(number.text!)!
            number.text = "\(sum)"
            
        case 2:
            sum = temp - Int(number.text!)!
            number.text = "\(sum)"
            
        case 3:
            sum = temp * Int(number.text!)!
            number.text = "\(sum)"
            
        case 4:
            if number.text=="0" {
                number.text = "\("错误")"
            }else{
                sum = temp / Int(number.text!)!
                number.text = "\(sum)"
            }
            
        default:
            break
        }
    }
    @IBAction func puls(_ sender: Any) {
        flag = 1
        temp = Int(number.text!)!
        number.text = ""
    }
    
    @IBAction func subtract(_ sender: Any){
        flag = 2
        temp = Int(number.text!)!
        number.text = ""
    }
    
    @IBAction func ride(_ sender: Any) {
        flag = 3
        temp = Int(number.text!)!
        number.text = ""
    }
    
    @IBAction func divide(_ sender: Any) {
        flag = 4
        temp = Int(number.text!)!
        number.text = ""
    }
    
    @IBAction func Delete(_ sender: Any) {
        number.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

