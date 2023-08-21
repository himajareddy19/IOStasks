//
//  ViewController.swift
//  fibonacciseriesProgroam
//
//  Created by himajaredddy on 03/05/23.
//

import UIKit

class ViewController: UIViewController {
    let inputArray = [1,2,3,4,1,2,3,4,1,2,3,4]
    // Example usage:
    let numbers = [3,4,5]

    var countDict:[Int:Int] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
         forLoop()
        //  numberTriangle()
       // printOutput(numbers)

        //MARK:TO check testcases for fibonacci series
//        var val = 10
//        print("Following is the Fibonacci series:")
//        // Iterate for every number stating from 0 to val
//        for j in 0...val{
//            let output = fibonacciSeries(num: j)
//            print(output)
//        }
        // Test Cases for palindrome number
//        let mArr1 = [3,1,3]
//        let result1 = checkPalindrome(arr: mArr1)
//        if result1 == true{
//            print("Given array is palindrome")
//        }
//        else {
//            print("Given array is not a palindrome")
//        }
        //MARK:it is another way of to write a print statement.
        //print("Is Array - \(mArr1) is palindrome?:", result1)
    }
    //Function to check if the given array is palindrome or not
    func checkPalindrome(arr: [Int]) -> Bool {
        let reversedArray = Array(arr.reversed())
        return arr == reversedArray
    }
    //MARK: another way of to check palindrome no or not.
    //    func checkPalindrome(arr: [Int]) -> Bool  {
    //        var start = 0
    //        var end = arr.count - 1
    //
    //        while start < end  {
    //            if arr[start] != arr[end]  {
    //                return false
    //            }
    //            start += 1
    //            end -= 1
    //        }
    //        return true
    //    }

    func fibonacciSeries(num: Int) -> Int{
        //The value of 0th and 1st number of the fibonacci series are 0 and 1
        var n1 = 0
        var n2 = 1
        // To store the result
        var nR = 0
        //  Adding two previous numbers to find ith number of the series
        for _ in 0..<num{
            nR = n1
            n1 = n2
            n2 = nR + n2
        }
        return n1
    }
    



    func forLoop(){
        for i in inputArray {
            countDict[i] = (countDict[i] ?? 0) + 1
            print(countDict)
        }
    }
    func starDesign(){

        for i in 1...5{
            for _ in 1...i{
                print("*",terminator:"")
            }
            print(" ")
        }

        let num = 4
        for i in 1...num{
            for _ in 0..<(num-i){
                print("",terminator: " ")
            }
            for y in 1...i{
                print(y, terminator: " ")
            }
            // Add new line
            print("")
        }
    }
    func numberTriangle() {
        // Height of the upper star triangle pattern
        let num = 9
        for i in 1...num{
            // Printing white spaces
            for _ in stride(from: num, to: i, by: -1){
                print(terminator : " ")
            }
            // Printing upper star triangle pattern
            for x in 1...i{
                print(x, terminator : " ")
            }
            // New line after each row
            print(" ")
        }
    }

    func printOutput(_ numbers: [Int]) {
        for number in numbers {
             for i in 0..<number {
                var output = ""
                for j in 0..<number {
                    if (i % 2 == 0) {
                        output += (j % 2 == 0) ? "*" : "0"
                    } else {
                        output += (j % 2 == 0) ? "0" : "*"
                    }
                }
                print(output)
            }
        }
    }


}


