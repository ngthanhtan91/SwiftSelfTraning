//
//  ViewController.swift
//  SwiftSelfTraing
//
//  Created by Tan (Tharin) T. NGUYEN on 1/6/16.
//  Copyright © 2016 MeoSoft. All rights reserved.
//

import UIKit

class Company {
    var code: String?
    var price: Double?
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //instanceVariable()
//        workWithCollections()
        
        // optional
//        optional()
        
        // optional binding
        workWithOptionalChaining()
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
    func optional() {
        // Nornal
        var text = findCompanyName("Facebook")
        
        // Unwraping Optionals
        if (text != nil) {
            // Explain: Once we know the optional must contain a value,
            // we unwrap it by placing an exclamation mark (!) to the end of the optional’s name.
            text = "Hello!" + text!
        }
        
        // Optionals binding: Simplier and recommended way to unwrap an optional
        // We use if let / if var instead of !
        if let tempText = text {
            text = "Hello" + tempText
        }
        
        // Optioanls binding simlier
        if let bindingText = findCompanyName("Apple") {
            let message = "Hello" + bindingText
            print("\(message)")
        }
        
        print("\(text)")
    }
    
    // Optional Chaining
    func workWithOptionalChaining() {
        // Without Option chaining
        if let myCompany = findCompany("Apple") {
            if let sharePrice = myCompany.price {
                let totalCost = sharePrice * 100
                print("Here is my money: \(totalCost)")
            }
        }
        
        // Optional chaining
        if let sharePrice = findCompany("Apple")?.price {
            let totalCost = sharePrice * 100
            print("Here is my money: \(totalCost) from optional chaining")
        }
    }
    
    func findCompany(companyName: String) -> Company? {
        if (companyName == "Apple") {
            let aapl: Company = Company()
            aapl.code = "AAPL"
            aapl.price = 90.32
            
            return aapl
            
        } else if (companyName == "Google") {
            let goog: Company = Company()
            goog.code = "GOOG"
            goog.price = 556.36
            
            return goog
        }
        
        return nil
    }
    
    
    func findCompanyName(companyName: String) -> String? {
        if companyName == "Apple" {
            let appleString = "Apple is the best company to learn about marketing"
            return appleString
        }
        else if companyName == "Google" {
            let googleString = "Apple is the best company to learn about marketing"
            return googleString
        }
        else {
            return nil
        }
    }
}

