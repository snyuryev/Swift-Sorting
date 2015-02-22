import Foundation

//Insertion sort
//Worst case performance О(n2) comparisons, swaps
//Best case performance	O(n) comparisons, O(1) swaps
//Average case performance О(n2) comparisons, swaps
//Worst case space complexity О(n) total, O(1) auxiliary
func insertionSort(#unsortedArray: [Int]) ->[Int] {
    var sorted = unsortedArray
    for var i = 1; i < sorted.count; i++ {
        var currentElement = sorted[i]
        var j = i - 1
        while j >= 0 && sorted[j] > currentElement {
            sorted[j+1] = sorted[j]
            sorted[j] = currentElement
            j--;
        }
    }
    return sorted
}

var unsorted: [Int] = []

for i in 0...10 {
    unsorted.append(random()%100)
}

println(unsorted)

let insertionSorted = insertionSort(unsortedArray: unsorted)

println(insertionSorted)
