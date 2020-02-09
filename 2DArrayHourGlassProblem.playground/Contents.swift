//Sample 2D Array
var arr = [[1,2,3,4,0,0],[0,1,0,0,0,0],[1,2,3,4,0,0],[0,0,0,0,0,0],[1,2,3,4,0,0],[0,0,0,0,0,0]]

//HourGlass stucture in above array will be something like
//  1 2 3
//    1
//  1 2 3
//

func findMaxSumOfHourGlass(in arr:[[Int]]) -> Int{
    var sum = 0
    var maxSum = Int.min
    for i in 0..<arr.count{
        for  j in 0..<arr.count{
            if i+2 < arr.count && j+2 < arr.count {
                sum =  arr[i][j] + arr[i][j + 1] + arr[i][j + 2] + arr[i + 1][j + 1] + arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2];
                if sum > maxSum{
                    maxSum = sum
                }
                
            }
        }
    }
    return maxSum
}
print(findMaxSumOfHourGlass(in: arr))
