class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var leftMost = findLeft(nums, target)
        var rightMost = findRight(nums, target)
        
        if (leftMost == -1){
            return [-1,-1]
        }
        return [leftMost, rightMost]
    }
    
    func findLeft(_ nums: [Int], _ target: Int)  -> Int {
        var left = 0
        var right = nums.count - 1
        var leftMost = -1
        
        while (left <= right){
            let mid = (left + right) // 2
            
            if (nums[mid] > target){
                right = mid - 1
            }
            else if (nums[mid] < target){
                left = mid + 1
            }
            else {
                leftMost = mid
                right = mid - 1
            }
        }
        return leftMost
    }
    
    func findRight(_ nums: [Int], _ target: Int)  -> Int {
        var right = nums.count - 1
        var left = 0
        var rightMost = -1
        
        while (left <= right){
            let mid = (left + right) // 2
            
            if (nums[mid] < target){
                left = mid + 1
            }
            else if(nums[mid] > target){
                right = mid - 1
            }
            
            else{
                rightMost = mid
                left = mid + 1
            }
        }
        return rightMost
    }
}



// Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

// If target is not found in the array, return [-1, -1].

// You must write an algorithm with O(log n) runtime complexity.

 

// Example 1:

// Input: nums = [5,7,7,8,8,10], target = 8
// Output: [3,4]
// Example 2:

// Input: nums = [5,7,7,8,8,10], target = 6
// Output: [-1,-1]
// Example 3:

// Input: nums = [], target = 0
// Output: [-1,-1]
 

// Constraints:

// 0 <= nums.length <= 105
// -109 <= nums[i] <= 109
// nums is a non-decreasing array.
// -109 <= target <= 109