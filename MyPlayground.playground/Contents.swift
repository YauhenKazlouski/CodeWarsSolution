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
