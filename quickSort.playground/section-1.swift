import Foundation

//Quicksort
//Worst case performance O(n2)
//Best case performance	O(n log n) (simple partition)
//or O(n) (three-way partition and equal keys)
//Average case performance O(n log n)
//Worst case space complexity O(n) auxiliary (naive) O(log n) auxiliary
func quickSort(#unsortedArray: [Int]) ->[Int] {
    if unsortedArray.isEmpty {
        return []
    }
    
    let pivot = unsortedArray[0]
    
    var left: [Int] = []
    var middle: [Int] = []
    var right: [Int] = []
    
    for x in unsortedArray {
        switch x {
        case let x where x < pivot:
            left.append(x)
        case let x where x == pivot:
            middle.append(x)
        case let x where x > pivot:
            right.append(x)
        default:
            break
        }
    }
    
    return quickSort(unsortedArray:left) + middle + quickSort(unsortedArray:right)
}

var unsorted: [Int] = []

for i in 0...10 {
    unsorted.append(random()%100)
}

println(unsorted)

let quickSorted = quickSort(unsortedArray: unsorted)

println(quickSorted)
