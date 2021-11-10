import UIKit

/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/
let firstString = "I'm learing"
let secondString = "swift"

print(firstString, secondString, "!!!")
//print("\(firstString) \(secondString) !!!") // :)

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge = 38
/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears = myAge + 10
//print("my Age In Ten Years", myAgeInTenYears)
/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear: Float = 365.25
/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed: Float
daysPassed = Float(myAgeInTenYears) * daysInYear

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(Int(daysPassed)) days")
/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.

 Steps:
 */
 let ac = 8.0, cb = 6.0
 //1.Right-angled triangle
 //2.Hypotenuse of the triangle
 var ab: Double
 ab = sqrt(pow(ac, 2) + pow(cb, 2))
 print("Hypotenuse of the triangle is ", ab)
 //3.Area of a triangle
 print("Area of a triangle is ", ((ac * cb)/2))
 //4.Triangle perimeter
 print("Triangle perimeter is \(String(ab + ac + cb))")
