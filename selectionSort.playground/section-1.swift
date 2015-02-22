import Foundation

//Selection sort
//Worst case performance О(n2)
//Best case performance	О(n2)
//Average case performance О(n2)
//Worst case space complexity О(n) total, O(1) auxiliary
func selectionSort(#unsortedArray: [Int]) ->[Int] {
    var sorted = unsortedArray
    for var i = 0; i < sorted.count-1; i++ {
        var indexMin = i
        for var j = i+1; j < sorted.count; j++ {
            if sorted[j] < sorted[indexMin] {
                indexMin = j
            }
        }
        if indexMin != i {
            let a = sorted[i]
            sorted[i] = sorted[indexMin]
            sorted[indexMin] = a
        }
    }
    return sorted
}

var unsorted: [Int] = []

for i in 0...10 {
    unsorted.append(random()%100)
}

println(unsorted)

let selectionSorted = selectionSort(unsortedArray: unsorted)

println(selectionSorted)
