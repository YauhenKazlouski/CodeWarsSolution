import UIKit
/* Create a function add(n)Add(n) which returns a function that always adds n to any number*/
func add(_ n: Int) -> ((Int) -> Int) {
    func Add(_ m: Int) -> Int {
        return n + m
    }
    return Add
}

func addOptionTwo(_ n: Int) -> (Int) -> Int {
    return { x in
        return x + n
    }
}


/* Maximum Multiple */
func maxMultiple(_ d: Int, _ b: Int) -> Int {
    return b - b % d
}

/* Leap Years */
func isLeapYear(_ year: Int) -> Bool {
  if year % 400 == 0 {
        return true
    } else if year % 100 == 0 {
        return false
    } else if year % 4 == 0 {
        return true
    } else {
        return false
    }
}

/* Extra Perfect Numbers */
func extraPerfectNumbers(upTo n: Int) -> [Int] {
    guard n > 0 else { return [] }
    return stride(from: 1, through: n, by: 2).map { $0 }
}

/* Valid Braces */
func validBraces(_ string:String) -> Bool {
  let matchingBraces: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    var stack: [Character] = []
    
    for char in string {
        if let matchingOpening = matchingBraces[char] {
            if stack.last == matchingOpening {
                stack.removeLast()
            } else {
                return false
            }
        } else {
            stack.append(char)
        }
    }
    return stack.isEmpty
}

//Square Every Digit
func squareDigits(_ num: Int) -> Int {
  let numString = String(num)
        let squaredString = numString.compactMap { char in
        if let digit = Int(String(char)) {
            return String(digit * digit)
        }
        return nil
    }.joined()
    
    return Int(squaredString) ?? 0
}

// Bouncing Balls
func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
 guard h > 0, bounce > 0, bounce < 1, window < h else {
        return -1
    }
    
    var count = 0
    var currentHeight = h
    
    while currentHeight > window {
        count += 1
        currentHeight *= bounce
        if currentHeight > window {
            count += 1
        }
    }
    
    return count
}

//Transportation on vacation
func RentalCarCost(_ days: Int) -> Int {
let dailyRate = 40
    let discount = days >= 7 ? 50 : (days >= 3 ? 20 : 0)
    return days * dailyRate - discount
}

//Sum Mixed Array
func sumMix(_ arr: [Any]) -> Int {
return arr.compactMap { element in
        (element as? Int) ?? (Int(element as? String ?? ""))
    }.reduce(0, +)
}

//Grasshopper - Check for factor
func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return base % factor == 0
}

//Sum of positive
func sumOfPositives (_ numbers: [Int] ) -> Int {
    return numbers.filter { $0 > 0 }.reduce(0, +)
}

//Reversed Strings
func reverse(_ str: String) -> String {
     return String(str.reversed())
}

//Convert boolean values to strings 'Yes' or 'No'.
func boolToWord(_ bool: Bool) -> String {
bool ? "Yes" : "No"
}

//Highest and Lowest
func highAndLow(_ numbers: String) -> String {
  let numberArray = numbers.split(separator: " ").compactMap { Int($0) }
    
    guard let maxNumber = numberArray.max(), let minNumber = numberArray.min() else {
        return ""
    }
    
    return "\(maxNumber) \(minNumber)"
}

//You Can't Code Under Pressure #1
func doubleInteger(_ num: Int) -> Int {
  num * 2
}

//Convert a Number to a String
func numberToString(number: Int) -> String {
  String(number)
}
