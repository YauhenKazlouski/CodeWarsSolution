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

