//: Playground - noun: a place where people can play
import Foundation

var arr = [7, 8, 2, 3, 5, 6, 9]
func split<T>(input : [T]) -> ([T], [T]) {
    var out1: [T] = [], out2: [T] = []
    let length = input.count
    let c = length / 2
    out1.reserveCapacity(c)
    out2.reserveCapacity(length - c)
    out1 = Array(input[0..<c])
    out2 = Array(input[c..<length])
    return (out1, out2)
}

func merge<T : Comparable>(xs : [T], ys : [T]) -> [T] {
    if ys.isEmpty {
        return xs
    }
    if xs.isEmpty {
        return ys
    }
    let x = xs.first
    let y = ys.first
    if(x <= y) {
        var z = merge(Array(xs[1..<xs.count]), ys)
        z.insert(x!, atIndex: 0)
        return z
    } else {
        var z = merge(xs, Array(ys[1..<ys.count]))
        z.insert(y!, atIndex: 0)
        return z
    }
}

func mergeSort<T : Comparable>(xs : [T]) -> [T] {
    if xs.isEmpty || xs.count == 1 {
        return xs
    }
    let (l1, l2) = split(xs)
    return merge(mergeSort(l1), mergeSort(l2))
}

mergeSort([2, 1])
mergeSort([7, 8, 2, 9, 0, 12, 23, 3, 1])
