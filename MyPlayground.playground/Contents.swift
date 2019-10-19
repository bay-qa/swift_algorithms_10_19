import UIKit

/*
 1. Create a function that takes an integer and returns a boolean which indicates if the number is prime
 2. (optional for extra bonus) Create a function that takes an integer and prints all prime numbers before this integer */

func isPrime(number: Int) -> Bool {
    if number > 1 && number < 4 {
        return true
    }
    if number > 1 && number / 1 == number {
        for index in 2...number-1 {
            let divide = number % index
         //   print("%", divide, "%")
                if divide == 0 {
                    return false
                }
        }
        return true
    } else {
        return false
    }
}

func printAllPrimeNumbersBeforeGivenNumber(number: Int) {
    if number > 2 {
        for index in 1...number-1 {
                if isPrime(number: index) {
                    print(index)
                }
            }
    } else {
        print("Sorry, nothing to print. Please try another number...")
    }
}

// 2    3    5    7    11    13    17    19    23    29    31    37    41    43    47    53    59    61    67    71    73    79    83    89    97    101

isPrime(number: 7)

printAllPrimeNumbersBeforeGivenNumber(number: 101)






