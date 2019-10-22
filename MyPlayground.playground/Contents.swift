import UIKit

/*
 1. Create a function that takes an integer and returns a boolean which indicates if the number is prime
 2. (optional for extra bonus) Create a function that takes an integer and prints all prime numbers before this integer */

//Creating a function that takes Int and returns if Number is Prime or not
func returnIfPrime(number: Int) -> Bool {
    
    guard number != 1 else {
            return false
    }
    
    guard number != 2 else {
        return true
    }
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

print(returnIfPrime(number: 4))


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
