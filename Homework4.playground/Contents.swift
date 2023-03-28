import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam: String = "Girls"

let resultsOfGames: [String: (String, String)] = [
    "Brooklyn Nets": ("99:89", "109:89"),
    "Dallas Mavericks": ("87:93", "104:97"),
    "Washington Wizards": ("117:112", "107:122")
]

func printGameScore(teamOneName: String, teamTwoName: String, score: String) {
    print("\(teamOneName) against \(teamTwoName) scored - \(score)")
}

for (enemyTeam, (firstGameScore, secondGameScore)) in resultsOfGames {
    printGameScore(teamOneName: myTeam, teamTwoName: enemyTeam, score: firstGameScore)
    printGameScore(teamOneName: myTeam, teamTwoName: enemyTeam, score: secondGameScore)
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let myBanknotes: [Int] = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(banknotes: [Int]) -> Int {
    var sum: Int = 0
    for banknote in banknotes {
        sum += banknote
    }
    return sum
}

let cash: Int = calculateCash(banknotes: myBanknotes)
print("I have \(cash) EUR in my wallet.")

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */


func isEvenNumber(_ theNumber: Int) -> Bool{
    return theNumber % 2 == 0
}

let numberOne: Int = 7
print("\(numberOne) is an even number: \(isEvenNumber(numberOne))")
let numberTwo: Int = 6
print("\(numberTwo) is an even number: \(isEvenNumber(numberTwo))")

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int] {
    var numbers: [Int] = []
    for numb in from...to {
        numbers.append(numb)
    }
    return numbers
}

let array: [Int] = createArray(from: 1, to: 100)
print(array)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

func filterOutEvenNumbers(theNumbers: [Int]) -> [Int] {
    var theNumbers = theNumbers // Changing let to var
    
    // Doing this like this because of the task description...
    while let i = theNumbers.firstIndex(where: isEvenNumber(_:)) {
        theNumbers.remove(at: i)
    }
    return theNumbers
}

let newArray: [Int] = filterOutEvenNumbers(theNumbers: array)

print(newArray)
