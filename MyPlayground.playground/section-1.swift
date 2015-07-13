// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func search(#name: String) -> String? {
    let names = ["Doc","Grumpy","Happy","Sleepy","Bashful","Sneezy","Dopey"]
    for n in names {
        if n == name {
            return n
        }
    }
    return nil
}

if let result = search(name: "Doc") {
    println("Found")
} else {
    println("Not Found")
}