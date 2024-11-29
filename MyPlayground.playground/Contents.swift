import UIKit
/* Create a function add(n)Add(n) which returns a function that always adds n to any number*/
func add(_ n: Int) -> ((Int) -> Int) {
    func Add(_ m: Int) -> Int {
        return n + m
    }
    return Add
}
