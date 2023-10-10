class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var nums = nums
        
        if nums.count == 1 {
            return 0
        }
        
        nums.sort()
        
        // Step 2: Calculate the number of duplicate elements
        var operations = nums.count - Set(nums).count
        
        // Step 3: Initialize a pointer variable
        var pointer = nums.count - 1
        
        // Step 4: Check elements from the last of the sorted array
        while pointer > 0 {
            let maxDiff = nums[pointer] - nums[0]
            
            // Step 5: Check if the maxDiff fulfills the condition
            if maxDiff > nums.count - 1 {
                operations += 1
            }
            
            pointer -= 1
        }
        
        return operations
    }
}

// You are given an integer array nums. In one operation, you can replace any element in nums with any integer.

// nums is considered continuous if both of the following conditions are fulfilled:

// All elements in nums are unique.
// The difference between the maximum element and the minimum element in nums equals nums.length - 1.
// For example, nums = [4, 2, 5, 3] is continuous, but nums = [1, 2, 3, 5, 6] is not continuous.

// Return the minimum number of operations to make nums continuous.

 

// Example 1:

// Input: nums = [4,2,5,3]
// Output: 0
// Explanation: nums is already continuous.
// Example 2:

// Input: nums = [1,2,3,5,6]
// Output: 1
// Explanation: One possible solution is to change the last element to 4.
// The resulting array is [1,2,3,5,4], which is continuous.
// Example 3:

// Input: nums = [1,10,100,1000]
// Output: 3
// Explanation: One possible solution is to:
// - Change the second element to 2.
// - Change the third element to 3.
// - Change the fourth element to 4.
// The resulting array is [1,2,3,4], which is continuous.
 

// Constraints:

// 1 <= nums.length <= 105
// 1 <= nums[i] <= 109