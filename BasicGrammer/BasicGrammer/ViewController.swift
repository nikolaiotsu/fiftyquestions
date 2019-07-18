//
//  ViewController.swift
//  BasicGrammer
//
//  Created by nikolai ostonal on 2019/07/08.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //1.1.1 データ型
        var companyName: String
        companyName = "Mclaren"
        
        var companyStart: Int
        companyStart = 1985
        
        var latitude: Double
        latitude = 36.223
        
        var longitude: Float
        longitude = -75.3333
        
        var tooMuchPizza: Bool
        tooMuchPizza = false
        
        var tooMuchVegetables: Bool
        tooMuchVegetables = true
    
        print(companyName, companyStart, latitude, longitude, tooMuchPizza, tooMuchVegetables)
        
        //1.1.2 データ型コレクション
        let favoriteBooks = ["Infinite Jest", "Freedom", "How Should a Person Be", "The Thousand Autumns of Jacob De Zoet", "12 Rules for Life"]
        
        let rankingAuthors = [1: "Jordan Peterson",  2: "David Mitchell", 3: "Jonathan Franzen", 4: "Sheila Heti", 5: "Alice Munro"]
        
        print(favoriteBooks, rankingAuthors)
        
        //1.1.3 条件分岐、ループ
        
        for book in favoriteBooks {
            print("I really enjoyed reading \(book)!")
            
        }
        var action: String
        let person = "Smiling"
        let excitementLevel = 100
        let sayHello = excitementLevel == 100 ? "Talk" : "Don't talk"

        
        if person == "Smiling" && excitementLevel == 100 {
            action = "Smile back and wave"
        } else if person == "Frowning" {
            action = "Frown back"
        } else {
            action = "Neutral expression"
        }
      
        print(action,sayHello)
        
        let weather = "Sunny"
        
        switch weather {
        case "rain":
                print("Bring an umbrella")
        case "snow":
                print("Wear a warm hat")
        case "sunny":
                print("Wear sunscreen")
        default:
                print("Enjoy your day!")
        
            }
        //1.1.4 クラス、プロパティ、メソッド
        
        class Account {
            var name: String
            var age: Int
            var gender: String
            var languageSpecialty: String
            
            init(name: String, age: Int, gender: String, languageSpecialty: String){
                self.name = name
                self.age = age
                self.gender = gender
                self.languageSpecialty = languageSpecialty
                
            }
            func printToConsole() {
                if gender == "male"{
                    print("\(name)君は\(languageSpecialty)得意な\(age)です。")
                }
                else if gender == "female" {
                    print("\(name)さんは\(languageSpecialty)得意な\(age)です。")
                    
                    
                }
            }
            
        }
        
        let eric = Account(name: "Eric", age: 32, gender: "male", languageSpecialty: "kotolin")
        let milly = Account(name: "Milly", age: 24, gender: "female", languageSpecialty: "swift")
        eric.printToConsole()
        milly.printToConsole()
        
      
        }
    
    
    }








