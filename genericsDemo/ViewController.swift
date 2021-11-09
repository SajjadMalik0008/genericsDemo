//
//  ViewController.swift
//  genericsDemo
//
//  Created by Dev ILI on 16/04/2021.
//

import UIKit
struct A {
    let name:String
    let age:Int
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
}
struct B {
    let name:String
    let age:Int
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myFriends:[String] = ["John", "Dave", "Jim"]
         
        let isOneOfMyFriends = exists(item: "Dave", inArray: myFriends)
        print("isOneOfMyFriends = \(isOneOfMyFriends)")
        // returns true
         
        let isOneOfMyFriends1 = exists(item: "Laura", inArray: myFriends)
        // returns false
        print("isOneOfMyFriends1 = \(isOneOfMyFriends1)")
        let myNumbers:[Int] = [1,2,3,4,5,6]
         
        let isOneOfMyNumbers = exists(item: 3, inArray: myNumbers)
        // returns true
        print("isOneOfMyNumbers = \(isOneOfMyNumbers)")
        let isOneOfMyNumbers1 = exists(item: 0, inArray: myNumbers)
        print("isOneOfMyNumbers1 = \(isOneOfMyNumbers1)")
        // returns false
         
        let myNumbersFloat:[Float] = [1.0,2.0,3.0,4.0,5.0,6.0,]
         
        let isOneOfMyFloatNumbers = exists(item: 3.0000, inArray: myNumbersFloat)
        print("isOneOfMyFloatNumbers = \(isOneOfMyFloatNumbers)")
        var someInt = 3
        var anotherInt = 107
        swapTwoValues(&someInt, &anotherInt)
        print("someInt = \(someInt) anotherInt = \(anotherInt)")
        var someString = "hello"
        var anotherString = "world"
        swapTwoValues(&someString, &anotherString)
        print("someString = \(someString) anotherString = \(anotherString)")
        
        printName(age: A.init(name: "Model A", age: 5340))
        printName(age: B.init(name: "Model B", age: 34))
    }
   

    func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    func exists<T: Equatable>(item:T, inArray:[T]) -> Bool
    {
        var index:Int = 0
        var found = false
        while (index < inArray.count && found == false) {
            if item == inArray[index] {
                found = true
            } else {
                index = index + 1
            }
        }
        if found {
            return true
        }else{
            return false
        }
    }
    
    func printName<Element>(age:Element){
        //print(name)
        if let model = age as?  A {
            print(model.age)
        }
    }
}

