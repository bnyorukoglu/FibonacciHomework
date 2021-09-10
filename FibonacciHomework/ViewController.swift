//
//  ViewController.swift
//  FibonacciHomework
//
//  Created by 109895 on 10.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        func fibonacciSequence (limit : Int) -> [Int]  {

            var calculatedFibonacciArr = [Int]()
            var counter = 0;
            while true {

                if counter == 0 {
                    calculatedFibonacciArr.append(0)
                }
                else if counter == 1 {
                    calculatedFibonacciArr.append(1)
                }
                else  {
                    let fbNumber = calculatedFibonacciArr[counter-1] + calculatedFibonacciArr[counter-2]
                    
                    if fbNumber < limit {
                        calculatedFibonacciArr.append (fbNumber )
                    }
                    
                    else{
                        return calculatedFibonacciArr
                    }
                }
                counter += 1
            }
            return calculatedFibonacciArr
        }
        
        func takeNumbersBetween(start : Int , end: Int , numbers: [Int])->[Int] {
            
            var numArray = [Int]()
            
            for t in  numbers {
                if t > start && t < end{
                    numArray.append(t)
                }
            }
            
            return numArray
        }
        let betweenNumbers = fibonacciSequence (limit: 10000)
        print(betweenNumbers);
        print(takeNumbersBetween(start: 750, end: 1000, numbers: betweenNumbers));
    }


}

