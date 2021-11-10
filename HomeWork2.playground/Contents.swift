import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */
print("\nEx1:\n")
var myVal1 = 3.14, myVal2 = 42.0
var result: Double = myVal1 + myVal2

print("The result is \(result)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */
print("\nEx2:\n")
var numberOne = 9, numberTwo = 2
let newConst = numberOne / numberTwo
let newRemainder = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(newConst), the remainder is \(newRemainder)")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
print("\nEx3:\n")
let macBookPro: Double = 1000
let qty: Double = 4
var price: Double = macBookPro // why I can not leave price it without value
let totalSum: Double

if qty < 5{
price = macBookPro
    
}
else if qty < 10{
price = macBookPro * 0.9
    
}
else if qty >= 10{
price = macBookPro * 0.85

}
// calculation
totalSum = qty * price


//Output
print("new: \(Int(qty)) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
print("\nEx4:\n")
let userInputAge = "33a"

if Int(userInputAge) != nil{
    print(Int(userInputAge)!)
}
else {
    
    print("This age \(userInputAge) Can NOT be converted to Int")
// Try to convert
    var textToInt: String = ""
    for el in userInputAge{
        if el.isNumber {
            textToInt.append(el)
            
        }
    }
    print ("Is your age \(Int(textToInt)!)?")
}


/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
print("\nEx5:\n")
let myBirthYear = 1982
let myBirthMonth = 12
let myBirthDate = 18

let currentYear = 2021
let currentMonth = 11
let currentDate = 9
// Calculation
var totalYearsFromBirth = currentYear - myBirthYear

var totalMonthFromBirth = currentMonth - myBirthMonth

var totalDaysFromBirth = currentDate - myBirthDate

// check days !<0
if totalDaysFromBirth < 0{
    
    totalMonthFromBirth = totalMonthFromBirth - 1
    totalDaysFromBirth = totalDaysFromBirth + 30
}
// check Months !<0
if totalMonthFromBirth < 0{
    totalYearsFromBirth = totalYearsFromBirth - 1
    totalMonthFromBirth = totalMonthFromBirth + 12
}
// Output
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
 print("\nEx6:\n")
 var quaterNum: String
 switch myBirthMonth{
    case 1...3:
    quaterNum = "first"
    case 4...6:
    quaterNum = "second"
    case 7...9:
    quaterNum = "third"
    case 10...12:
    quaterNum = "fourth"
    default:
    quaterNum = "wrong"
}
 
 print("I was born in the \(quaterNum) quarter")

