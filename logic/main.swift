import Foundation

// this is a personal guide for me to master swift. why? cuz i LOVE it.
// source of docs: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/

// the basics
// constants and variables

// constant:
let thisIsAConstantThatItValCannotBeChanged = "value"

// variables:
var thisCanBeChanged = 1

// for example:
if thisCanBeChanged == 1 {
    thisCanBeChanged = 2
}

// lets see the change
print(thisCanBeChanged)

// also we can add types to vars and constants:
let number: Int = 2
var string: String = "hi"

// can do multiple values at one line:
var n: Int = 2, s: String = "hi" // its just like c++ + typescript lmao

// string interpolation, damn, its a hard name:
print("the value of n is \(n)")

// what if we wnated to make float to int?
let fl = 3.14
let intResult = Int(fl)

print(intResult)

// and the final boss of swift lol
// if lets
let someShit: String? = "Swift xoxo"

// we declare a NEW let and put the constant we want to check in that new let!
if let unwrappedString = someShit {
    print("OK, its has some value \(unwrappedString)")
}

// guards:
func doSomeShit(number: Int?) -> Int? {
    // little bit pain, but should use to it, its man use is else! remeber that!
    guard let unwrappedNumber = number else {
        return nil
    }
    
    return unwrappedNumber
}

// at last, my enemy, Tuples. cuz i worked w them rarely
// Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.

let httpStat = (404, "Not Found") // useful :)

// how to decompose tuples
let (statusCode, statusMessage) = httpStat
print("stats: \(statusCode), and \(statusMessage)")
