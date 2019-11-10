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

print("isStringPolindrome")

func isStringPolindrome(text: String) -> Bool {
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

isStringPolindrome(text: "abab")
isStringPolindrome(text: "a")
isStringPolindrome(text: "bbnn")
isStringPolindrome(text: "bbbb")

print("isIntegerPolindrome")

func isIntegerPolindromeFunc(number: Int) -> Bool {
    let array: Array = intToArray(integer: number)
    print(array)
    
    let countOfAray:Int = Int(array.count)
    let halfOfArray: Int = countOfAray / 2
    print("need to find half of array \(array)")
    var halfOfArray1: [Int] = []
    var countAddedHalfOfArray1: Int = 0
    var halfOfArray2: [Int] = []
    var countAddedHalfOfArray2: Int = countOfAray
    
    repeat {
        let eachNumberInArray: Int = array[countAddedHalfOfArray1]
        halfOfArray1.append(eachNumberInArray)
        countAddedHalfOfArray1 = countAddedHalfOfArray1 + 1
    }
    while countAddedHalfOfArray1 < halfOfArray
    print("halfOfArray1 \(halfOfArray1)")
    
    repeat {
        let eachNumberInArray: Int = array[countAddedHalfOfArray2 - 1]
        halfOfArray2.append(eachNumberInArray)
        countAddedHalfOfArray2 = countAddedHalfOfArray2 - 1
    }
    while countAddedHalfOfArray2 > halfOfArray
    print("halfOfArray2 \(halfOfArray2)")
   
    // need to remove first item from array 2 if array count is odd
    if countOfAray%2 != 0 && halfOfArray2.count >= 2 {
        //countOfAray odd
        // need to remove first item from halfOfArray2
        halfOfArray2.remove(at: halfOfArray2.count-1)
        print("halfarray2 after removed first item \(halfOfArray2)")
    } else {
        //countOfArray even - do nothing
    }
    
    if halfOfArray1 == halfOfArray2 {
        return true
    } else {
        return false
    }
}

func intToArray(integer: Int) -> [Int] {
    var int = abs(integer)
    var arrayInt: [Int] = []
    arrayInt = [Int]()
    arrayInt.append(int%10)
    while int >= 10 {
        int = int/10
        arrayInt.insert(int%10, at: 0)
    }
    return arrayInt
}

intToArray(integer: 123)
isIntegerPolindromeFunc(number: -111)
isIntegerPolindromeFunc(number: 123)
isIntegerPolindromeFunc(number: 11111)
isIntegerPolindromeFunc(number: 1212)
isIntegerPolindromeFunc(number: 0)
isIntegerPolindromeFunc(number: -11)
isIntegerPolindromeFunc(number: -123)
isIntegerPolindromeFunc(number: 123454321)
isIntegerPolindromeFunc(number: 1234574321)
isIntegerPolindromeFunc(number: 9999)








