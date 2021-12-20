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
            var array = [12, 11, 15, 10, 9, 1, 2, 3, 13, 14, 4, 5, 6, 7, 8]
selectionSort(array: &array)
print(array)
            print(bubbleSort(array: &array))
        myQueue.push("first")
        myQueue.push("second")
            var aa = [[8, 5, 7, 9, 4, 10], [10, 4, 6, 7, 8, 11]]

            print(twoDswap(arr : 1aa))

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
        func twoDswap(arr:[Int]) -> Int{
        var i = 0
var k = 0
while k < aa.count{
 while i < aa[k].count {
            let x = aa[k][i]
            var j = i - 1
            while j >= 0 && aa[k][j] > x {
                aa[k][j+1] = aa[k][j]
                j -= 1
            }
            aa[k][j+1] = x
            i += 1
        }
        }
}
        func bubbleSort(array: inout [Int]) -> [Int] {
  var isSorted = false
  var counter = 0

  while !isSorted {
    isSorted = true
    for i in 0..<array.count - 1 - counter {
      if array[i] > array[i + 1] {
        array.swapAt(i, i + 1)
        isSorted = false
      }
    }
    counter = counter + 1
  }
  return array
}
    func selectionSort(array: inout [Int]) {

    for currentIndex in 0..<(array.count - 1) {
        var minIndex = currentIndex;
        for i in (currentIndex + 1)..<array.count {

            if (array[i] < array[minIndex]) {
                minIndex = i;
            }
        }
        if (minIndex != currentIndex) {
            let temp = array[currentIndex];
            array[currentIndex] = array[minIndex];
            array[minIndex] = temp;
        }
    }
}
        struct Queue {
        private var items: [String] = []
        
        func peek() -> String {
            guard let topElement = items.first else { fatalError("Empty Queue") }
            return topElement
        }
        
        mutating func pop() -> String {
            return items.removeLast()
        }
      
        mutating func push(_ element: String) {
            items.insert(element, at: 0)
        }
    }

}

