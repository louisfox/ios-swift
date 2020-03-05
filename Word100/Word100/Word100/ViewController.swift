//
//  ViewController.swift
//  Word100
//
//  Created by louis on 8/7/2015.
//  Copyright (c) 2015年 louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shw1: UILabel!
    @IBOutlet weak var shw2: UILabel!
    @IBOutlet weak var shw3: UILabel!
    @IBOutlet weak var input_text: UITextField!
    
    @IBAction func checkSum(sender: AnyObject) {

        shw1.text = "輸入的字串："+(input_text.text ?? <#default value#>)
        
        var len = count(input_text.text)
        
        shw2.text = "字串的長度：\(len)個字母"
        
        var sum:UInt32 = 0
        let s = String(input_text.text ?? <#default value#>).uppercaseString.unicodeScalars

        for index in indices(s){
            let value = s[index].value
            if (65<=value && value<=90) {
                sum += s[index].value-64
            }
            
        }
        
        shw3.text = "字串的總和：\(sum)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        shw1.text = "輸入的字串"
        shw2.text = "字串的長度"
        shw3.text = "字串的總和"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

