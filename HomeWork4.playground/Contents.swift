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
print("\nExercise 1\n")

let myTeam = "Girls"
// create dict
var resultsOfGames  = [
    "Brooklyn Nets" : ["99:89", "109:99"],
    "Dallas Mavericks" : ["87:93", "104:97"],
    "Washington Wizards" : ["117:112", "107:122"]
    ]

// Output printing, looping through dict keys and values, which are lists
for (key, value) in resultsOfGames{
    for el in value{
        //print output
        print("\(myTeam) against \(key) scored - \(el)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
print("\nExercise 2\n")

let wallet = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(walletArray: [Int]) -> Int{
    var sumOfIntInArray = 0
    for i in walletArray{
        sumOfIntInArray += i
    }
    return sumOfIntInArray
}
//Output
print("I got \(calculateCash(walletArray: wallet))")

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
print("\nExercise 3\n")

func isEvenNumber(value: Int) -> Bool{
    // This f-tion checks value to be even, and if it is so, returns true, otherwise false
    if value % 2 == 0{
        return true
    }
    else{
        return false
    }
}
for i in 1...10{
    if isEvenNumber(value: i){
        print("\(i) is even number,", terminator: " ")
}
}
isEvenNumber(value: 3)
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
print("\nExercise 4\n")

// create f-tion
func createArray(startNumber: Int, endNumber: Int)-> [Int]{
    // f-tion creates a new sequencial array, by given start and end numbers
    var newArray: [Int] = []
    for i in startNumber...endNumber{
        newArray.append(i)
    }
    return newArray
}
// call ftion
var myArray = createArray(startNumber: 1, endNumber: 100)
// output

print("Odd and even number array: \n",myArray)


/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
print("\nExercise 5\n")

for i in myArray{
    if isEvenNumber(value: i){
        //var index = myArray.firstIndex(of: i)!
        myArray.remove(at: myArray.firstIndex(of: i)!)
        
    }
}
//Output
print("Odd number array: \n",myArray)
