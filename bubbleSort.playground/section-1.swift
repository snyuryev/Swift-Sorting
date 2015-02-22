import Foundation

//Bubble sort
//Worst case performance O(n^2)
//Best case performance	O(n)
//Average case performance O(n^2)
//Worst case space complexity O(1) auxiliary
func bubbleSort(#unsortedArray: [Int]) ->[Int] {
    var sorted = unsortedArray
    for var i = 0; i < sorted.count-1; i++ {
        for var j = 0; j < sorted.count-i-1; j++ {
            if sorted[j] > sorted[j+1] {
                let a = sorted[j+1]
                sorted[j+1] = sorted[j]
                sorted[j] = a
            }
        }
    }
    return sorted
}

var unsorted: [Int] = []

for i in 0...10 {
    unsorted.append(random()%100)
}

println(unsorted)

let bubbleSorted = bubbleSort(unsortedArray: unsorted)

println(bubbleSorted)