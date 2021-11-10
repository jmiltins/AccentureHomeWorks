import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
print("\nExercise 1 \n")


let period = 5
let rate = 0.03
var profit: Double = 0
var yearlyProfit: Double = 0
var deposit: Double = 500000

///Calculation in loop
for _ in 1...period{
    yearlyProfit = deposit * rate  // Calculate yearlyProfit
    deposit += yearlyProfit // Adds yearlyProfit to deposit
    profit += yearlyProfit // Adds yearlyProfit to total profit
    //print("Yearly growth of the deposit: ",deposit) // for debugging
    
}
// Prints Output
print("Amount of income after \(period) years will be \(roundToTwoDecimals(myNumber: profit)) Eur. My total deposit will be \(roundToTwoDecimals(myNumber: deposit)) Eur !")

func roundToTwoDecimals(myNumber: Double) -> Double{
    //This f-tion rounds number : Double to two decimal places and returns it
    let myNumber1 = (round(myNumber*100))/100
    return (myNumber1)
}

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
print("\nExercise 2 \n")

var myArray: [Int] = []
var evenNumber: [Int] = []

for i in 1...20{
    myArray.append(i)
}
for i in myArray{
    if i % 2 == 0 {
        evenNumber.append(i)
    }
}
//Output
print("My even numbers are: \(evenNumber)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
print("\nExercise 3 \n")
var randomNumber: Int = 0

for counter in 1...99{
    randomNumber = Int.random(in: 1..<10)
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
    
}
if randomNumber != 5{
    print("No luck today!")
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
print("\nExercise 4 \n")

var numberOfDays: Int = 0
let poleHeight = 10
var bugState = 0
let dayAchievement = 2
let nightLoss = -1

// Calculation
while bugState < poleHeight{
    numberOfDays += 1
    bugState += dayAchievement
    if bugState > 9 {
        break
    }
    bugState += nightLoss
}

// Output
print("bug will spend \(numberOfDays) to reach top of the post")
