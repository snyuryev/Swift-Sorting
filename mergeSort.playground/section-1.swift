import Foundation

//Merge sort
//Worst case performance O(n log n)
//Best case performance O(n log n) typical, O(n) natural variant
//Average case performance O(n log n)
//Worst case space complexity O(n) auxiliary
func mergeSort(#unsortedArray: [Int]) ->[Int] {
    var sorted = unsortedArray
    
    if unsortedArray.count > 1 {
        let a1 = unsortedArray.count / 2
        let a2 = unsortedArray.count - a1
        
        var array1 =  mergeSort(unsortedArray: Array(unsortedArray[0..<a1]))
        var array2 =  mergeSort(unsortedArray: Array(unsortedArray[a1..<unsortedArray.count]))
        
        var i = 0
        var j = 0
        var k = 0
        
        while array1.count != j && array2.count != k {
            if array1[j] < array2[k] {
                sorted[i] = array1[j]
                i++
                j++
            }
            else {
                sorted[i] = array2[k]
                i++
                k++
            }
        }
        
        while array1.count != j {
            sorted[i] = array1[j]
            i++
            j++
        }
        
        while array2.count != k {
            sorted[i] = array2[k]
            i++
            k++
        }
    }
    
    return sorted
}

var unsorted: [Int] = []

for i in 0...10 {
    unsorted.append(random()%100)
}

println(unsorted)

let mergeSorted = mergeSort(unsortedArray: unsorted)

println(mergeSorted)

