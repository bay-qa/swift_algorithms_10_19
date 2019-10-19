import UIKit

/*
 1. Create a function that takes an integer and returns a boolean which indicates if the number is prime
 2. (optional for extra bonus) Create a function that takes an integer and prints all prime numbers before this integer */

//Creating a function that takes Int and returns if Number is Prime or not
func returnIfPrime(number: Int) -> Bool {    // Function finds numbers that can not be divided by 2 or 3, and creates exclusions
    
    let num: Int = number
    let firstDivider: Int = 2
    let secondDivider: Int = 3
    let notValidPrime: Int = 1
    
    guard num == notValidPrime else {     // Excluding '1' from results
        if num % 2 == 0 && num != firstDivider
            || num % 3 == 0 && num != secondDivider {    // Excluding numbers which can be divided by 2 but not equal 2
            return false
        }
        return true
    }
    return false
}

// Creating a funtion that takes Int and prints Prime Numbers befor Int
func printPrimeNumbers(num: Int) {
    
    var returnNumber: Int = 1
    
    while returnNumber < num {
        if returnIfPrime(number: returnNumber) {
            print(returnNumber)
        }
        returnNumber += 1
    }
}
