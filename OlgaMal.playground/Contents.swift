
import UIKit

/* 1. String polindrome

 Create a function that takes a string argument and returns boolean - is it polindrome or not. DO NOT use standard reverse methods in swift*/


func isStrPalindrome(inputString: String) -> Bool {
let stringLength = inputString.count
var position = 0

while position < stringLength / 2 {
    let startIndex = inputString.index(inputString.startIndex, offsetBy: position)
    let endIndex = inputString.index(inputString.endIndex, offsetBy: -position - 1)
    
    if inputString[startIndex] == inputString[endIndex] {
        position += 1
    } else {
        return false
    }
}

return true
}
/// Check
isStrPalindrome(inputString: "ABBA")
isStrPalindrome(inputString: "ABdBA")
isStrPalindrome(inputString: "ABCDBA")

/* 2. Int polindrome

Create a function that takes an integer argument and returns boolean - is it polindrome or not. DO NOT use Int to String casting. */


func isIntPalindrome(_ x: Int) -> Bool {
    var number = x
    var reverseNumber = 0
    while number > 0 {
        let reminder = number % 10
        reverseNumber = reverseNumber * 10 + reminder
        number = number / 10
    }
    return x == reverseNumber
}

/// Check
isIntPalindrome(1234321)
isIntPalindrome(1230321)
isIntPalindrome(12345321)
