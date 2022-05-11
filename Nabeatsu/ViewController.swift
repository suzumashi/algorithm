//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    var number: Int = 0
    var ope: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func isAho() -> Bool {
        //3の倍数での7の倍数でもある時は
        if number % 3 == 0 && number % 7 == 0{
            return false
        // 3の倍数かどうか調べる
        } else if number % 3 == 0 {
            ope = 1
            return true
        } else if number % 5 == 0 {
            ope = 2
            return true
        // 1の位が3かどうか調べる
        //} else if number % 10 == 3 {
            //return true
        // 10の位が3かどうか調べる
        //} else if number / 10 % 10 == 3{
            //return true
        }
        // 3がつくかどうか調べる
        var checkNum: Int = number
        while checkNum != 0{
            if checkNum % 10 == 3{
                ope = 1
                return true
            } else {
                checkNum = checkNum / 10
            }
        }

        return false
    }
        
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true && ope == 1 {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else if isAho() == true && ope == 2 {
            faceLabel.text = "૮₍˶ᵔ ᵕ ᵔ˶₎ა"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }

    @IBAction func clearButton() {
        number = 0
        countLabel.text = String(number)
        faceLabel.text = "(゜o゜)"
    }

}

