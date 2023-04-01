import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

func calculateResult(firstNumber numberOne: Int, secondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    var result = numberOne
       
    switch calculationType {
        case .addition: result += numberTwo
        case .subtraction: result -= numberTwo
        case .multiplication: result *= numberTwo
        case .division: result /= numberTwo
    }
    
    print("\(numberOne) \(calculationType.rawValue) \(numberTwo) = \(result)")
 
    return result
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/
let numberOne: Int = 9
let numberTwo: Int = 3

calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: CalculationType.addition)
calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: CalculationType.subtraction)
calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: CalculationType.multiplication)
calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: CalculationType.division)

/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs() {
        print("\(name) from \(productionYear) has \(horsePower) horse power!!!")
    }
}

/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */

let audiQ7 = Car(name: "Audi Q7", productionYear: 2016, horsePower: 333)
var audiTT = audiQ7
audiTT.name = "Audi TT"

audiQ7.getSpecs()
audiTT.getSpecs()
