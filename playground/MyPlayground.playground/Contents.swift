//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a:String = "d"

var arr = [1, 2, 4, 5 , 7]

arr.append(9)

var arr2 = [2,4,6,8]

arr2.removeAtIndex(0)

arr2.append(10)

var dict = ["name":"Melody", "age":21]

var name = "name"

var age = "age"

var announce:String = "My name is \(dict[name]!) and I am \(dict[age]!) years old"

// or

var name2 = dict["name"]!

var age2 = dict["age"]!

var announce2 = "My name is \(name2) and I am \(age2) years old"

// Gives me a random number between 1 and 5
var randomNumber = arc4random_uniform(7)

// for loops
for var i = 0; i < 5; ++i{
    arr2.append(i)
}

println(arr2)

for x in arr2{
    println(x)
}

for (index,x) in enumerate(arr){
    arr[index] = x + 1
}

println(arr)

var arr3 = [6.0,5.0,4.0,3]

for (index,x) in enumerate(arr3){
    arr3[index] = x/2
}

println(arr3)

// while loop

var i = 0

var arr4 = [3,2,4,5,6,7]

while i < arr4.count{
    arr4[i] = arr4[i] - 1
    i++
}

println(arr4)
