import UIKit

/*
 1. Create a function that takes an integer and returns a boolean which indicates if the number is prime
 2. (optional for extra bonus) Create a function that takes an integer and prints all prime numbers before this integer */
func isPrime(_ value:Int) -> Bool{
    
    var result = true
    for i in 2 ..< value {
        
        if value % i == 0{
            return false

        }
    }
    return result
}

print(isPrime(11))


//2. (optional for extra bonus) Create a function that takes an integer and prints all prime numbers before this integer */


func printPrimes(to n: Int) -> [Int] {
    var primes = [Int]()

    for n in 2...n {
        if primes.allSatisfy({ n % $0 != 0 }) {
            primes.append(n)
        }
    }
    return primes
}

print(printPrimes(to: 130))
