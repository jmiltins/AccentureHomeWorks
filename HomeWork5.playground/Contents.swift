import UIKit
/*
Exercise 1
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/
print("\nExercise 1\n")
//1.1
class Figure{
    var height: Float = 0.0
    var width: Float = 0.0
    var radius: Float = 0.0
    var square: Float = 0.0
    var perimeter: Float = 0.0
//1.2
    init(height: Float, width: Float){
        self.height = height
        self.width = width
    }
// f-tions
    func squareOfFigure() -> Float {
        return square
    }
    
    func perimeterOfFigure() -> Float {
        return perimeter
    }
//1.3
}
class Rectangle: Figure{
// Overrided f-tions
    override func squareOfFigure() -> Float{
        square = width * height
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = width * 2 + height * 2
        return perimeter
    }
//1.4    // Extra f-tions
    func description(){
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}
class straitTriangle: Figure{
    
    override func squareOfFigure() -> Float {
        square = width * height / 2
        return square
    }
    override func perimeterOfFigure() -> Float {
        
        let hippo = sqrt(pow(width, 2) + pow(height, 2))
        perimeter = width + height + hippo
        return perimeter
    }
    // Extra f-tions
        func description(){
            print("Triangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
        }
    
}

// 1.5 new instance
let myRectangle = Rectangle(height: 4, width: 5)
let myTriangle = straitTriangle(height: 4, width: 5)
// 1.6 test
print("test:"); myRectangle.description()
print("test2:"); myTriangle.description()
/*
 Exercise 2
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
  Don't forget to return result

Declare two numbers.
Call func 4 times for all calculateResult
*/
print("\nExercise 2\n")
// Create Enum CalculationType

enum CalculationType: String{
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

// create f-tion
func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int ,withCalculationType calculationType: CalculationType)-> Int{
    // This f-tion takes two numbers, and depending on Enum calculationType, returns result
    var result = 0
       
       switch calculationType {
       case .addition: result = numberOne + numberTwo
       case .substraction: result = numberOne - numberTwo
       case .multiplication: result = numberOne * numberTwo
       case .division: result = numberOne / numberTwo
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
}
// call the function
calculateResult(firstNumber: 10, andSecondNumber: 5, withCalculationType: .addition)
calculateResult(firstNumber: 10, andSecondNumber: 5, withCalculationType: .substraction)
calculateResult(firstNumber: 10, andSecondNumber: 5, withCalculationType: .multiplication)
calculateResult(firstNumber: 10, andSecondNumber: 5, withCalculationType: .division)


/*
Exercise 3

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

Create func getSpecs() print it with elements provided above
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */
print("\nExercise 3\n")
//3.1 Create struct Car
struct Car{
    var name: String
    var productionYear: Int
    var horsPower: Int
    
//    init(name: String, productionYear: Int, horsPower: Int){
//        self.name = name
//        self.productionYear = productionYear
//        self.horsPower = horsPower
//    }
//3.2 Create func
    func getSpecs() {
        print("Car \(name) with production year: \(productionYear) has \(horsPower) hp! ")
    }
}
//3.3 Make example of struct Car with the name audiQ7
var audiQ7 = Car(name: "AudiQ7", productionYear: 2006, horsPower: 210)

//3.4 Make a copy of audiQ7 and name it audiTT.

var audiTT = audiQ7  // creates copy, not points to same memory location
// audiTT === audiQ7 //can't check like thet :(

//3.5 Provide the correct name for audiTT
audiTT.name = "AudiTT"
//audiTT.productionYear = 2021
//audiTT.horsPower = 300
 
//3.6 Than run getSpecs() for audiQ7 and audiTT
audiQ7.getSpecs()
audiTT.getSpecs()



