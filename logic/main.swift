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

// in Swift, a precondition is a condition that must be true for code to execute correctly
var index = 4 // to not throw any error, very clean :))
precondition(index > 0, "Index must be greater than zero.")

// i dont mention operators, cuz, why?? its basic math bro

// range, GOATed syntax
let count = 5
for _ in 0...count { // OMGGGGGG, i LOVE IT
    print(count)
}

// one sided range
let names = ["amir", "parsa", "reza", "mamad"]

for name in names[...1] { // [0] and [1]
    print(name)
}

for name in names[1...] { // [1] and [2] and [3]
    print(name)
}

let rangeee = 0...5

print(Array(rangeee))
// or
print(rangeee.map {
    $0
})

// multi line string
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

print(quotation)

// insert and rmove
var txt = "hi"
txt.insert("!", at: txt.endIndex)
print(txt)

// insert multiple chars
txt.insert(contentsOf: ":D ", at: txt.startIndex)
print(txt)

// how to create a empry arr
var ints = [Int]()
print(ints)

// Sets - very important
// they are UNIQUE, thats it
var letters = Set<Character>()
letters.formUnion(["a", "b", "a"])
print(letters)

// dictionaries
let numberOfLegs: Dictionary<String, Int> = ["spider": 8, "ant": 6, "cat": 4]

// closues
var doSomethin: (String) -> Void = { str in
    print(str)
}
doSomethin("hi")

// for loops:

// in
let countt = 1...10
for number in countt {
    print(number)
}

// filtered in
for number in countt where number != 3 {
    print(number)
}

// range
for n in 1...5 {
    print(n)
}

// stride
for n in stride(from: 0, to: 10, by: 2) {
    print(n)
}

// enum
for (index, val) in countt.enumerated() {
    print(index + val)
}

// o(n^2) search
func badSearch(arr: [Int]) -> Bool {
    for i in 0..<arr.count {
        for j in (i + 1)..<arr.count {
            if arr[i] == arr[j] { return true}
        }
    }
    
    return false
}

// b search
func bSearch(arr: [Int]) -> Int? {
    let target = 2 // hardcoded
    var low = arr.startIndex
    var high = arr.endIndex - 1
    
    while low <= high {
        let mid = (low + high) / 2
        
        if arr[mid] == target { return mid }
        else if arr[mid] < target {
            low = mid + 1
        }
        else {
            high = mid - 1
        }
    }
    
    return nil
}

//two sum:
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // declare hashmap
    var dic = [Int : Int]()
    
    for (index, val) in nums.enumerated() {
        // was struggling in just this LINE, damn, so cool
        // this is the check to db, if it had the complement, it returns it,
        if let complementIndex = dic[target - val] {
            return [complementIndex, index]
        }
        
        // damn
        // this is the db for our case -- remembers the index values
        dic[val] = index
    }

    return []
}

let res = twoSum([1, 5, 55, 4, 5], 9)
print(res)

