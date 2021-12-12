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
        print(mergeSort([1,3,4,7,2]))
        print(swap(10,5))
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
    func mergeSort(_ array: [Int] ) -> [Int] {
      guard array.count > 1 else { return array }

      let middleIndex = array.count / 2
      
      let leftArray = mergeSort(Array(array[0..<middleIndex]))
      let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
      
      return merge(leftArray, rightArray)
    }

    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
      var leftIndex = 0
      var rightIndex = 0

      var orderedArray: [Int] = []
      
      while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]

        if leftElement < rightElement {
          orderedArray.append(leftElement)
          leftIndex += 1
        } else if leftElement > rightElement {
          orderedArray.append(rightElement)
          rightIndex += 1
        } else {
          orderedArray.append(leftElement)
          leftIndex += 1
          orderedArray.append(rightElement)
          rightIndex += 1
        }
      }

      while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
      }

      while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
      }
      
      return orderedArray
    }
    func swap(_ xx : Int , _ yy : Int){
        var x = xx
        var y = yy

        x = x + y
        y = x - y
        x = x - y
        print (x,y)
        
    }

}

