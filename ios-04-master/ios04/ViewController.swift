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
    var flag1 = 0
    var FlagDot = 0
    var CalFlag = 0
    var sum : Double = 0
    var i = 0
    var j = 0
    var k = 0
    
    @IBOutlet weak var number: UITextField!
    
    @IBAction func Num1(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "1"
        }else{
            number.text = number.text!+"1"
        }
        CalFlag = 0
    }
    @IBAction func Nnm2(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "2"
        }else{
            number.text = number.text!+"2"
        }
        CalFlag = 0
    }
    @IBAction func Num3(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "3"
        }else{
            number.text = number.text!+"3"
        }
        CalFlag = 0
    }
    @IBAction func Sum4(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "4"
        }else{
            number.text = number.text!+"4"
        }
        CalFlag = 0
    }
    @IBAction func Sum5(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "5"
        }else{
            number.text = number.text!+"5"
        }
        CalFlag = 0
    }
    @IBAction func Sum6(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "6"
        }else{
            number.text = number.text!+"6"
        }
        CalFlag = 0
    }
    @IBAction func Num7(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "7"
        }else{
            number.text = number.text!+"7"
        }
        CalFlag = 0
    }
    @IBAction func Num8(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "8"
        }else{
            number.text = number.text!+"8"
        }
        CalFlag = 0
    }
    @IBAction func Num9(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "9"
        }else{
            number.text = number.text!+"9"
        }
        CalFlag = 0
    }
    @IBAction func Num0(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "0"
        }else{
            number.text = number.text!+"0"
        }
        CalFlag = 0
    }
    
    @IBAction func equal(_ sender: Any) {
        
        switch flag {
        
        case 1:
            sum = temp + Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
            
        case 2:
            sum = temp - Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
            
        case 3:
            sum = temp * Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
            
        case 4:
            if number.text=="0" {
                number.text = "\("错误")"
            }else{
                sum = temp / Double(number.text!)!
                number.text = "\(sum)"
                temp = sum
                CalFlag = 1
            }
        case 5:
            sum = pow(temp, Double(number.text!)!)
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
        default:
            break
        }
    }
    
    @IBAction func puls(_ sender: Any) {
        flag = 1
        CalFlag = 1
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 1
    }
    
    @IBAction func subtract(_ sender: Any){
        flag = 2
        CalFlag = 1
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 2
    }
    
    @IBAction func ride(_ sender: Any) {
        flag = 3
        CalFlag = 1
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 3
    }
    
    @IBAction func divide(_ sender: Any) {
        flag = 4
        CalFlag = 1
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 4
    }
    
    @IBAction func power(_ sender: Any) {
        flag = 5
        CalFlag = 1
        temp = Double(number.text!)!
        number.text = "^"
    }
    
    @IBAction func dot(_ sender: Any) {
        if FlagDot == 0{
            number.text = number.text!+"."
        }
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
        number.text = "0"
        CalFlag = 1
        temp = 0
        i = 0
        j = 0
        k = 0
    }
    @IBAction func delete1(_ sender: Any) {
        if number.text == ""{
            number.text = ""
        }else if sum != 0{
            sum /= 10
            if sum >= 0{
                number.text = "\(sum)"
            }else{
                number.text = ""
            }
        }else if number.text != ""{
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

