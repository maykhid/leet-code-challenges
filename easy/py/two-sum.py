# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        i = 0
        while(i < len(nums)):
            j = i + 1
            while(j < len(nums)):
                if nums[i] + nums[j] == target:
                    return [i, j]
                j += 1
            i += 1

# print(Solution.twoSum(Solution, [2,7,11,15], 9))          

# /**
#  * The optimzed solution works as follows:
#  * instead of using two pointers to check each sum of the nums starting from the first index
#  * we can use map to store elements and their indexes while looping through nums
#  * e.g for nums = [2, 7. 11, 14], target = 9. At index 0 which is 2, the complement is the number you add to 2 to give 9, which is 7.
#  * So check if key 7 is in the map, if not add 2 : 0, to the map. 
#  * Continue looping from index 1 which is 7 the complement is 2. check if the complent 2 can be found in the map. yes it exists!
#  * So we return the index of 2 and index of 7 in a list -> [0, 1]. if we did not find shit we return an empty list
#  * 
#  */

def two_sum_optimised(nums: list[int], target: int) -> list:
    _map = {}
    for i in range(len(nums)):
        complement = target - nums[i] # gets complement of a number
        value = _map.get(complement) # try to get the value of the complement e.g {2:0} -> 2 is complement, 1 is value
        if value is not None: # if value exists (which means complement exists)
            return [value, i] # return the value of the found complement and the current index of the element we're on
        _map[nums[i]] = i # else add the key (complement) and its value (index)
    return []

print(two_sum_optimised([2,7,11,15], 9))

         

