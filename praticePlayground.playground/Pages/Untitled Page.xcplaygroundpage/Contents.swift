import UIKit

var greeting = "Hello, playground"

protocol item {

    var weight = 20 {get}
    var price = 100 {set}
}
class employee : item{
    var name = "himaja"
}
func message(){
    print("message:", "hello")

}
var employee1 = employee()

employee1.name

