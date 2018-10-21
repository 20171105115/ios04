//
//  ViewController.swift
//  ios04
//
//  Created by 朱博宇 on 2018/9/21.
//  Copyright © 2018年 朱博宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var temp : Double = 0
    var temp1 : Int = 0
    var temp2 : Double = 0
    var flag = 0
    var i = 0
    var j = 0
    var k = 0
    
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
        var sum : Double = 0
        switch flag {
        
        case 1:
            sum = temp + Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            
        case 2:
            sum = temp - Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            
        case 3:
            sum = temp * Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            
        case 4:
            if number.text=="0" {
                number.text = "\("错误")"
            }else{
                sum = temp / Double(number.text!)!
                number.text = "\(sum)"
                temp = sum
            }
        case 5:
            sum = temp + Double(number.text!)!*0.1
            number.text = "\(sum)"

        default:
            break
        }
    }
    @IBAction func puls(_ sender: Any) {
        flag = 1
        temp = temp + Double(number.text!)!
        number.text = ""
    }
    
    @IBAction func subtract(_ sender: Any){
        flag = 2
        
        if i == 0{
            temp = Double(number.text!)!
            i =  1
        }else if i==1 {
            temp -= Double(number.text!)!
        }
        number.text = ""
    }
    
    @IBAction func ride(_ sender: Any) {
        flag = 3
        if j == 0{
            temp = Double(number.text!)!
            j = 1
        }else{
            temp = temp * Double(number.text!)!
        }
        number.text = ""
    }
    
    @IBAction func divide(_ sender: Any) {
        flag = 4
        if k == 0{
            temp = Double(number.text!)!
            k = 1
        }else{
            temp = temp / Double(number.text!)!
        }
        temp = temp / Double(number.text!)!
        number.text = ""
    }
    @IBAction func dot(_ sender: Any) {
        flag = 5
        temp = Double(number.text!)!
        number.text = ""
    }
    
    @IBAction func sign(_ sender: Any) {
        temp = Double(number.text!)!
        if temp==0{
            number.text = "\(temp)"
        }else if temp>0{
            temp = -1*temp
            number.text = "\(temp)"
        }else if temp<0{
            temp = -1*temp
            number.text = "\(temp)"
        }
    }
    
    @IBAction func Delete(_ sender: Any) {
        number.text = ""
        temp = 0
        i = 0
        j = 0
        k = 0
    }
    @IBAction func delete1(_ sender: Any) {
        if number.text == ""{
            number.text = ""
        }else{
            temp1 = Int(number.text!)!
            temp1 /= 10
            if temp1 != 0{
                number.text = "\(temp1)"
            }else{
                number.text = ""
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

