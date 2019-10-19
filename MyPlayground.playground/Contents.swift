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
    for index in 2...number - 1 {
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

