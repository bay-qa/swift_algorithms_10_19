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


// 1. String palindrome

// create a function that takes a string argument and returns boolean - is it palindrome or not. DO NOT use standard reverse methods in swift



func isStringPalindrome (stringToCheck: String) -> Bool {
    let charFromString:[Character] = Array(stringToCheck)
    if charFromString.count == 1{
        return true
    }
    if charFromString.count == 2 && charFromString[0] == charFromString[1]{
        return true
    }
    if charFromString.count == 2 && charFromString[0] != charFromString[1]{
        return false
    }
    
    for index in 1...(charFromString.count-1)/2  {
        if charFromString[index-1] != charFromString[charFromString.count-index]{
            return false
        }
    }
    return true
}
isStringPalindrome(stringToCheck: "htyfrirouorirfyth")


// 2. Int palindrome

// create a function that takes an integer argument and returns boolean - is it palindrome or not. DO NOT u


func convertInt(myInt: Int)-> [Int]{
    var temp = myInt
    var intArray:[Int] = []
    var index: Int = 0
    
    while temp != 0 {
        intArray.insert(temp % 10, at: index)
        temp = (temp - intArray[index])/10
        index = index+1
        
        
    }
    
    return intArray
}

convertInt(myInt: 237)

func isIntPalindrome(intToCheck: Int) -> Bool {
    let arrayFromInt = convertInt(myInt: intToCheck)
    if arrayFromInt.count == 1{
        return true
    }
    if arrayFromInt.count == 2 && arrayFromInt[0] == arrayFromInt[1]{
        return true
    }
    if arrayFromInt.count == 2 && arrayFromInt[0] != arrayFromInt[1]{
        return false
    }
    
    for index in 1...(arrayFromInt.count-1)/2  {
        if arrayFromInt[index-1] != arrayFromInt[arrayFromInt.count-index]{
            return false
        }
    }
    return true
}

isIntPalindrome(intToCheck: 123321)
