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
    @IBAction func Num4(_ sender: Any) {
        number.text = number.text!+"4"
    }
    @IBAction func Num5(_ sender: Any) {
        number.text = number.text!+"5"
    }
    @IBAction func Num6(_ sender: Any) {
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
    @IBAction func equal(_ sender: Any) {
        var sum = 0
        sum = temp + Int(number.text!)!
        number.text = "\(sum)"
    }
    @IBAction func puls(_ sender: Any) {
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

