//: [Previous](@previous)
import Foundation
func name() ->(String) ->Void {
    return{_ in
        var mystring1 = "Hello! Maya"
        var mystring2 = "I am a food blogger"

        // Concatenating two strings
        var concatString1 = mystring1 + mystring2
        print(concatString1)

    }
}
let result = name()

var fruitsArray = ["apple", "mango", "blueberry", "orange"]
let vegArray = ["tomato", "potato", "mango", "blueberry"]
let output = fruitsArray.filter(vegArray.contains(_:))
let commonelements = Set(fruitsArray).intersection(Set(vegArray))
let mergingArray = fruitsArray + vegArray
print(Set(mergingArray).sorted())
//Mark another Method
fruitsArray.append(contentsOf: vegArray)
print(Set(fruitsArray).sorted())

let x = ["1", "2"].dropLast()
let y = x[0]

let names = ["Bear", "Joe", "Clark"]
names.map { (s) -> String in
  return s.uppercased()
}

protocol item {

}
class employee :item {
var name = "perry"
    func message(){
print("good morning!")
    }
}
var employee1 = employee()
employee1.message()
employee1.name
