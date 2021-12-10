//
//  ViewController.swift
//  questionswift
//
//  Created by 李金龙 on 19/09/1400 AP.
//

import UIKit

class ViewController: UIViewController {
        var arr =  [1,2,5,4]
    override func viewDidLoad() {
        super.viewDidLoad()
        print(findSecondlargest(arr: arr))
        print(isPalindrome(value: "wawa"))
        // Do any additional setup after loading the view.
    }


    func findSecondlargest(arr:[Int]) -> Int{
        var i = 1
        var arrr = arr
        while i < arrr.count {
            let x = arrr[i]
            var j = i - 1
            while j >= 0 && arrr[j] > x {
                arrr[j+1] = arrr[j]
                j -= 1
            }
            arrr[j+1] = x
            i += 1
        }
        arrr.removeLast()
            return arrr.removeLast()
        
    }
    func isPalindrome(value: String) -> Bool
    {
        return value == String(value.reversed())
    }
}

