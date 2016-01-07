//
//  ViewController.swift
//  SwiftSelfTraing
//
//  Created by Tan (Tharin) T. NGUYEN on 1/6/16.
//  Copyright © 2016 MeoSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //instanceVariable()
        workWithCollections()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: Review swift knowledge
    
    // Variables, Constants and Type Inference
    func workWithVariables() {
        let count = 10 // count is inferred to be of type Int
        var price = 23.55 // price is inferred to be of type Double
        var myMessage = "Swift is the future!" // myMessage is inferred to be of type String

        price += Double(count)
        myMessage += " Swift is awesome!"
        
        print("My message is: \(myMessage) and \(count) vs \(price)")
    }
    
    // Collections: Array, Set, Dictionary
    func workWithCollections() {
        // Array
        let managers = ["Alex Ferguson", "Jouse Mourinho", "Pep Guadiola"]
        var footballers: [String] = []
        footballers.append("Messi")
        footballers += ["Ronaldo", "Ronaldinho", "Zidane", "C. Ronaldo"]
        
        // Loops
        for manager in managers {
            print("\(manager)")
        }
        
        for i in 0..<footballers.count {
            print("\(footballers[i])")
        }
        
        // Dictionary
        var someDict: [Int:String] = [1: "One", 2: "Two", 3: "Three"]
        
        let oldVal = someDict.updateValue("New value of one", forKey: 1)
        
        let someVar = someDict[1]
        
        print( "Old value of key = 1 is \(oldVal)" )
        print( "Value of key = 1 is \(someVar)" )
        print( "Value of key = 2 is \(someDict[2])" )
        print( "Value of key = 3 is \(someDict[3])" )
    }
    
    
    // Optional
    func instanceVariable() {
        var firstString: String = ""
        var optionalString: String?
        let number = 3
        let doubleNumber: Double!
        
        // Using variables
        firstString = "Hello world"
        print("My first string is: \(firstString)")
    
//        optionalString = "This is optional string"
        
        if let tempString = optionalString {
            print("\(tempString)")
        }
        
        if (optionalString != nil) {
            firstString += optionalString!
            print("\(firstString)")
        }
        else {
            print("optional string is nil")
        }
        
        
    }
}

