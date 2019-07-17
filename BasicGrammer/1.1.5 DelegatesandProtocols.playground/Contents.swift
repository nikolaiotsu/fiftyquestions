import UIKit

//1.1.5 プロトコル、デリゲート


protocol FavoriteProgrammingLanguageDelegate {
    
    func Swiftができる()
    
}

class FavoriteProgrammingLanguage {
    
    var delegate: FavoriteProgrammingLanguageDelegate?
    func インターンに参加する() {
        delegate?.Swiftができる()
        
    }
}


class Account: FavoriteProgrammingLanguageDelegate {
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
    func Swiftができる() {
        print("Swiftができる")
    }
    
}

let Fav = FavoriteProgrammingLanguage()
let A = Account(name: "Brad", age: 32, gender: "male", languageSpecialty: "Swift")
Fav.delegate = A
Fav.インターンに参加する()

