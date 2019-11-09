import UIKit

/*
 1. Create a function that takes an integer and returns a boolean which indicates if the number is prime
 2. (optional for extra bonus) Create a function that takes an integer and prints all prime numbers before this integer */

//first algorithm
func detectPrimeNumber(number: Int) -> Bool {
    var check:Bool = false
    
    if  number < 2 {
        return false
    }
    if number == 2 {
        return true
    }
    let lastPossibleNumb = Int(sqrt(Double(number)).rounded(.up))
    for index in 2...lastPossibleNumb{
        if number % index == 0 {
            check = false
            break
        } else {
            check = true
        }
    }
    return check
}
detectPrimeNumber(number: 7)
detectPrimeNumber(number: 9)

// second algorithm, it is probably not the best solution because it contains loop in a loop and will take a lot of recources for a big number, looking forward to see beter one from you ))
func printPrimeNumbers(number: Int){
    if  number < 2 {
          print ("There is no prime detected")
      }
      else if number == 2 {
          print ("2")
      } else {
    for index in 2...number - 1 {
        if detectPrimeNumber(number: index){
            print(index)
        }
    }
    }
}
printPrimeNumbers(number: 29)

// HW#2


// 1. String polindrome

// create a function that takes a string argument and returns boolean - is it polindrome or not. DO NOT use standard reverse methods in swift

// "abcdcba" => ture
// "a" => true
// "abcbe" => false


// 2. Int polindrome

// create a function that takes an integer argument and returns boolean - is it polindrome or not. DO NOT use Int to String casting.

// 121 => true
// 124 => false

print("HW#2")

func isStringpolindrome(text: String) -> Bool {
    var anArray: [ Character ] = []
    var mirrorOfAnAray: [ Character ] = []
    for char in text {
        anArray.insert(char, at: 0)
    }
    let arrayCount = anArray.count
    print(arrayCount)
    
    for char in text {
        mirrorOfAnAray.append(char)
    }
    print(anArray)
    print(mirrorOfAnAray)
    if anArray == mirrorOfAnAray {
        return true
    } else {
        return false
    }
}

func isIntegerpolindromeFunc(number: Int) -> Bool {
    var intNumberToString = String(number)
    if let cpecialCharacterIndex = intNumberToString.firstIndex(of: "-") {
        intNumberToString.remove(at: cpecialCharacterIndex)
    }
    if isStringpolindrome(text: intNumberToString) == true {
        return true
    } else {
        return false
    }
    
}

isIntegerpolindromeFunc(number: -99)
isStringpolindrome(text: "bob")
isIntegerpolindromeFunc(number: 999)
isStringpolindrome(text: "abc")
isIntegerpolindromeFunc(number: 9879)
isStringpolindrome(text: "poprpop")
isIntegerpolindromeFunc(number: 0)
isStringpolindrome(text: "h")
