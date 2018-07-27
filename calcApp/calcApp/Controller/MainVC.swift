//
//  ViewController.swift
//  calcApp
//
//  Created by Ferdinand Becker on 24/07/2018.
//  Copyright © 2018 Ferdinand Becker. All rights reserved.
//

import UIKit

func handleNumPress(number: String, sum: inout Sum, label: UILabel){
    
    if sum.answer != nil{
        sum.answer = nil
        sum.currentNum = "0"
    }
    
    if sum.currentNum=="0"{
        sum.currentNum=""
    }
    
    if sum.currentNum.count < 9{
    sum.currentNum.append(number)
    }
    sum.currentNum.display(label: label)
}

func clearDisplay(sum: inout Sum)->String{
    sum.currentNum = "0"
    sum.answer=nil
    sum.function=nil
    sum.firstNum = 0
    return sum.currentNum
}

func doSum(sum: Sum)->Double{
    var answer: Double = 0
    if sum.function==nil{
        answer = Double(sum.currentNum)!
    }else if sum.function == "+"{
        answer = Double(sum.currentNum)!+sum.firstNum
    }
    
    
    return answer
}


var currentSum = Sum()
class ViewController: UIViewController {

    @IBOutlet weak var displayLbl: customDisplay!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        currentSum.currentNum.display(label: displayLbl)
    }

    @IBAction func numBtnPressed(_ sender: UIButton) {
        //print(sender.titleLabel!.text!)
        
        handleNumPress(number: sender.titleLabel!.text!, sum: &currentSum, label: displayLbl)
    }
    
    @IBAction func clearBtnPressed(_ sender: Any) {
        clearDisplay(sum: &currentSum).display(label: displayLbl)
    }
    
    @IBAction func equalBtnPressed(_ sender: Any) {
        currentSum.answer = doSum(sum: currentSum)
        currentSum.answer!.cleanValue().display(label: displayLbl)
        //String(currentSum.answer!).display(label: displayLbl) for testing
        currentSum.currentNum = String(currentSum.answer!)
        currentSum.function=nil
    }
    

}

