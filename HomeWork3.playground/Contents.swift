import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let startingDeposit: Float = 500_000 // You can use underscores to visually divide numbers, cool!
let period: Int = 5
let rate: Float = 1.04

var deposit: Float = startingDeposit
for _ in 1...period {
    deposit *= rate
}

let profit: Float = deposit - startingDeposit

print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */


let myNumbers: [Int] = [3, 6, 2, 1, 99, 110, -2, 0]
var evenNumber: [Int] = []

for number in myNumbers {
    if number % 2 == 0 {
        evenNumber.append(number)
    }
}

print("My even numbers are: \(evenNumber)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter: Int = 0
let whichNumberToFind: Int = 5
let numberPool: Int = 50
var foundTheNumber: Bool = true

// for _ in 1...100 // We could limit runs, for example, to 100
while true { // The task said for loop, but while loop looks prettier
    counter += 1
    let randomNumber = Int.random(in: 1...50)
    if randomNumber == whichNumberToFind {
        foundTheNumber = true
        break
    }
}
if foundTheNumber {
    print("Number \(whichNumberToFind) will be after \(counter) shuffles")
} else {
    print("Number \(whichNumberToFind) wasn't found after \(counter) shuffles")
}
        

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let heightMax: Int = 10
let dayProgress: Int = 2
let nightProgess: Int = -1

var numberOfDays: Int = 1 // Assuming full days, not days as in daytimes
var distanceClimbed: Int = 0

// Assuming that starts with day, that is:
// [  Day 1  ][  Day 2  ]
// [Day|Night][Day|Night]
while true {
    distanceClimbed += dayProgress
    if distanceClimbed > heightMax {
        print("Reached the top during day")
        break
    }
    distanceClimbed += nightProgess
    if distanceClimbed > heightMax {
        print("Reached the top during night")
        break
    }
    numberOfDays += 1
}

print("The bug will spend \(numberOfDays) days to reach top of the post")
