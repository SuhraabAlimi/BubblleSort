func readInput(unsorted: inout [String])
{
    while let line = readLine()
    {
        unsorted.append(line)
    }

}
func swap (integers: inout [String], firstIndex: Int, secondIndex: Int)
{
    return integers.swapAt(firstIndex,secondIndex)

}
func sorting(_ array: [String]) -> [String]
{
var allSwap = 0
var allPass = 0
var sortedIntegers = array
var currentSwap = 0
//print("Pass: \(allPass), Swaps: \(currentSwap)/\(allSwap), Array: \(sortedIntegers)")
repeat {
    currentSwap = 0
    for index in 1..<sortedIntegers.count {
        if sortedIntegers[index] < sortedIntegers[index - 1] {
        swap(integers:&sortedIntegers, firstIndex: index-1, secondIndex:index)
        currentSwap += 1
        allSwap += 1
    }
}
allPass += 1
//print("Pass: \(allPass), Swaps: \(currentSwap)/\(allSwap), Array: \(sortedIntegers)")
} while currentSwap > 0
return sortedIntegers
}

var unsorted = [""]
readInput(unsorted:&unsorted)
unsorted.remove(at: 0)
print(sorting(unsorted))

