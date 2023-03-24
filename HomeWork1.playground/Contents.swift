import UIKit

/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

let firstString: String = "I'm learning"
let secondString: String = "swift"
print("\(firstString) \(secondString) !!!")

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/

let myAge: Int = 28

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var myAgeInTenYears: Int = myAge + 10

// print(myAgeInTenYears)


/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear: Float = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

var daysPassed: Float = Float(myAgeInTenYears) * daysInYear

// print(daysPassed)

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysPassed) days!")

/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

/*
A
- -
-   -
-     -
C - - - B
*/

let sideAC: Double = 8.0
let sideCB: Double = 6.0
let sideAB: Double = sqrt(sideAC * sideAC + sideCB * sideCB)
print("Right-angled triangle: 90 degrees")
print("Hypotenuse: \(sideAB)")
let triangleArea: Double = (sideAC * sideCB) / 2
print("Triangle area: \(triangleArea)")
let perimeter: Double = sideAB + sideAC + sideCB
print("Perimeter: \(perimeter)")

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

// Specify date components
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

print(myBirthday!)

let now = Date()
print(now)

let calendar = Calendar.current

let components = calendar.dateComponents([.year, .month, .day], from: myBirthday!, to: now)

print("Total years: \(components.year!) , total months: \(components.month!), total days: \(components.day!)")
