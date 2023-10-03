class Solution {
    func find132pattern(nums: [Int]) -> Bool{
        if nums.count < 3{
            return false
        }

        for swi in 0..<(nums.count-2){
            for swj in swi+1..<(nums.count-1){
                for swk in swj+1..<(nums.count){
                    if nums[swi] < nums[swk] && nums[swk] < nums[swj]{
                        return true
                    }
                }
            }
        }
        return false

        
    }
}

let obj = Solution()
// var nums = [1,2,3,4]
// var nums = [3,1,4,2]
var nums = [3,5,0,3,4]
print(obj.find132pattern(nums: nums))