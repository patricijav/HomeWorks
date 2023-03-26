import UIKit
// Necessary for UI elements, but we could have gone probably with Foundation for now

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var first: Float = 3.14
var second: Float = 42.0
var third: Double = Double(first + second)
print(third)
print(String(format: "%.2f", third))

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 5
var numberTwo: Int = 3
let result: Int = numberOne / numberTwo
// print(result)
let remainder: Int = numberOne % numberTwo
// print(remainder)
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder)")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

let qty: Int = 11
let price: Int
if qty < 5 {
    price = 1000
} else if qty < 10 {
    price = 900
} else {
    price = 850
}

let totalSum: Int = qty * price

print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge: String = "33a"
// let someNumber: Int = Int(userInputAge)! // This would cause the fatal error


if Int(userInputAge) != nil {
    print("Can be converted to Int")
    let someNumber: Int = Int(userInputAge)!
    print(someNumber)
} else {
    print("Can't be converted to Int")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

var dateComponents = DateComponents()
dateComponents.year = 1994
dateComponents.month = 11
dateComponents.day = 26
dateComponents.timeZone = TimeZone(abbreviation: "EET") // Eastern European Time
dateComponents.hour = 19 // or 20
dateComponents.minute = 45

// Create date from components
let userCalendar = Calendar(identifier: .gregorian) // since the components above (like year 1980) are for Gregorian
let myBirthday = userCalendar.date(from: dateComponents)

// We could have also just added ?? to remove the optionality by providing a default

print(myBirthday!)

let now = Date()
print(now)

let calendar = Calendar.current

let components = calendar.dateComponents([.year, .month, .day], from: myBirthday!, to: now)

print("Total years: \(components.year!) , total months: \(components.month!), total days: \(components.day!)")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
//=================

let monthOfBirth = 11
switch monthOfBirth {
case 1...3:
    print("Q1")
case 4...6:
    print("Q2")
case 7...9:
    print("Q3")
case 10...12:
    print("Q4")
default:
    print("This shouldn't happen!")
}

